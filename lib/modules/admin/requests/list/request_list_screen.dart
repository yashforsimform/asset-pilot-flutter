import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../repositories/remote_repository/requests/models/request_summary_res_dm.dart';
import '../../../../utilities/extensions/context_extensions.dart';
import '../../../../utilities/navigation/app_routes.dart';
import '../../../../values/constants/app_constants.dart';
import '../../../../values/enumeration/statuses.dart';
import '../../../../widgets/widgets.dart';
import '../../shell/admin_shell.dart';
import '../request_status_x.dart';
import 'cubit/request_list_cubit.dart';

/// IT Admin Request Management screen (mockup A02): filterable, paginated
/// table of all device requests, backed by [RequestListCubit].
class RequestListScreen extends StatefulWidget {
  const RequestListScreen({super.key});

  @override
  State<RequestListScreen> createState() => _RequestListScreenState();
}

class _RequestListScreenState extends State<RequestListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<RequestListCubit>().loadRequests();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AdminPageHeader(title: context.l10n.adminRequests),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(AppConstants.screenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _StatusPillsRow(),
                const Gap(12),
                const _FiltersRow(),
                const Gap(16),
                Expanded(
                  child: BlocBuilder<RequestListCubit, RequestListState>(
                    builder: (context, state) {
                      return NetworkStateView<List<RequestSummaryResDm>>(
                        state: state.requests,
                        isEmpty: (data) => data.isEmpty,
                        onData: (context, data) => _RequestsTable(
                          allFiltered: context
                              .read<RequestListCubit>()
                              .filteredRequests,
                          currentPage: state.currentPage,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _StatusPillsRow extends StatelessWidget {
  const _StatusPillsRow();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequestListCubit, RequestListState>(
      builder: (context, state) {
        final cubit = context.read<RequestListCubit>();
        final l10n = context.l10n;
        final tabs = [
          ('all', l10n.requestFilterAll),
          ('pendingManager', l10n.requestFilterPendingRm),
          ('pendingIt', l10n.requestFilterPendingIt),
          ('assigned', l10n.requestFilterAssigned),
          ('rejected', l10n.requestFilterRejected),
          ('completed', l10n.requestFilterCompleted),
        ];
        return FilterPillTabs(
          tabs: [
            for (final (id, label) in tabs)
              PillTab(id: id, label: label, count: cubit.countFor(id)),
          ],
          selectedId: state.statusFilter,
          onChanged: cubit.setStatusFilter,
        );
      },
    );
  }
}

class _FiltersRow extends StatelessWidget {
  const _FiltersRow();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequestListCubit, RequestListState>(
      builder: (context, state) {
        final cubit = context.read<RequestListCubit>();
        final l10n = context.l10n;
        return Wrap(
          spacing: 10,
          runSpacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Builder(
              builder: (context) => FilterDropdownChip(
                label: l10n.requestFilterPriorityLabel,
                valueLabel:
                    state.priorityFilter?.label(context) ??
                    l10n.requestFilterAll,
                onTap: () => _showPriorityMenu(context, cubit),
              ),
            ),
            Builder(
              builder: (context) => FilterDropdownChip(
                label: l10n.requestFilterCategoryLabel,
                valueLabel: state.categoryFilter == 'all'
                    ? l10n.requestCategoryAll
                    : state.categoryFilter,
                onTap: () => _showCategoryMenu(context, cubit),
              ),
            ),
            // TODO(date-range): no date-range picker widget exists yet in the
            // shared library — this trigger is a display-only stub for now.
            FilterDropdownChip(
              label: l10n.requestFilterDateRangeLabel,
              valueLabel: l10n.requestFilterAll,
              trailingIcon: Icons.calendar_today_outlined,
              onTap: () => AppToast.info(context, l10n.comingSoon),
            ),
          ],
        );
      },
    );
  }

  void _showPriorityMenu(BuildContext context, RequestListCubit cubit) {
    final l10n = context.l10n;
    showMenu<RequestPriority?>(
      context: context,
      position: _menuPositionBelow(context),
      items: [
        PopupMenuItem(value: null, child: Text(l10n.requestFilterAll)),
        for (final priority in RequestPriority.values)
          PopupMenuItem(value: priority, child: Text(priority.label(context))),
      ],
    ).then((value) {
      if (context.mounted) cubit.setPriorityFilter(value);
    });
  }

  void _showCategoryMenu(BuildContext context, RequestListCubit cubit) {
    final l10n = context.l10n;
    final categories = [
      ('all', l10n.requestCategoryAll),
      ('Laptop', l10n.requestCategoryLaptop),
      ('Monitor', l10n.requestCategoryMonitor),
      ('Mobile', l10n.requestCategoryMobile),
      ('Accessory', l10n.requestCategoryAccessory),
    ];
    showMenu<String>(
      context: context,
      position: _menuPositionBelow(context),
      items: [
        for (final (value, label) in categories)
          PopupMenuItem(value: value, child: Text(label)),
      ],
    ).then((value) {
      if (value != null && context.mounted) cubit.setCategoryFilter(value);
    });
  }

  /// Anchors a [showMenu] popup directly below the tapped chip, in the
  /// overlay's coordinate space, instead of a fixed screen offset.
  RelativeRect _menuPositionBelow(BuildContext context) {
    final chipBox = context.findRenderObject()! as RenderBox;
    final overlay =
        Overlay.of(context).context.findRenderObject()! as RenderBox;
    final topLeft = chipBox.localToGlobal(
      Offset(0, chipBox.size.height),
      ancestor: overlay,
    );
    final bottomRight = chipBox.localToGlobal(
      chipBox.size.bottomRight(Offset.zero),
      ancestor: overlay,
    );
    return RelativeRect.fromLTRB(
      topLeft.dx,
      topLeft.dy,
      overlay.size.width - bottomRight.dx,
      overlay.size.height - topLeft.dy,
    );
  }
}

class _RequestsTable extends StatelessWidget {
  const _RequestsTable({required this.allFiltered, required this.currentPage});

  final List<RequestSummaryResDm> allFiltered;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RequestListCubit>();
    final l10n = context.l10n;
    final start = (currentPage - 1) * kRequestListPageSize;
    final end = (start + kRequestListPageSize).clamp(0, allFiltered.length);
    final pageRows = start < allFiltered.length
        ? allFiltered.sublist(start, end)
        : <RequestSummaryResDm>[];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: AppDataTable<RequestSummaryResDm>(
            columns: [
              TableColumn<RequestSummaryResDm>(
                header: l10n.requestTableColumnId,
                cellBuilder: (context, row) => Text(
                  row.id,
                  style: context.appTextStyles.emphasisMedium.copyWith(
                    color: context.appColors.primary,
                  ),
                ),
              ),
              TableColumn<RequestSummaryResDm>(
                header: l10n.requestTableColumnEmployee,
                flex: 2,
                cellBuilder: (context, row) => Text(row.employeeName),
              ),
              TableColumn<RequestSummaryResDm>(
                header: l10n.requestTableColumnCategory,
                cellBuilder: (context, row) => Text(row.category),
              ),
              TableColumn<RequestSummaryResDm>(
                header: l10n.requestTableColumnPriority,
                cellBuilder: (context, row) => PriorityTag(
                  semantic: row.priority.semantic,
                  label: row.priority.label(context),
                ),
              ),
              TableColumn<RequestSummaryResDm>(
                header: l10n.requestTableColumnStatus,
                cellBuilder: (context, row) => StatusPill(
                  semantic: row.status.semantic,
                  label: row.status.label(context),
                  dense: true,
                ),
              ),
              TableColumn<RequestSummaryResDm>(
                header: l10n.requestTableColumnDates,
                flex: 2,
                cellBuilder: (context, row) =>
                    Text('${row.requestedFrom} – ${row.requestedTo}'),
              ),
              TableColumn<RequestSummaryResDm>(
                header: l10n.requestTableColumnMgr,
                cellBuilder: (context, row) => _MgrApprovalLabel(row: row),
              ),
              TableColumn<RequestSummaryResDm>(
                header: l10n.requestTableColumnActions,
                cellBuilder: (context, row) {
                  final isAssignable =
                      row.status == RequestStatus.pendingItApproval;
                  return SizedBox(
                    width: 84,
                    child: PillActionButton(
                      label: isAssignable
                          ? l10n.requestActionAssign
                          : l10n.requestActionView,
                      variant: isAssignable
                          ? AppButtonVariant.primary
                          : AppButtonVariant.secondary,
                      expand: true,
                      onPressed: () => context.go(
                        Routes.adminRequestDetail.path.replaceFirst(
                          ':id',
                          Uri.encodeComponent(row.id),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
            rows: pageRows,
            pagination: TablePagination(
              currentPage: currentPage,
              totalItems: allFiltered.length,
              pageSize: kRequestListPageSize,
              onPageChanged: cubit.setPage,
            ),
          ),
        ),
      ],
    );
  }
}

/// "Mgr" column cell: green ✓ label when manager-approved, amber "Pending"
/// while awaiting manager review, or red "Rejected" when the request itself
/// was rejected (mockup A02).
class _MgrApprovalLabel extends StatelessWidget {
  const _MgrApprovalLabel({required this.row});

  final RequestSummaryResDm row;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final (semantic, text, showCheck) = switch (row) {
      _ when row.status == RequestStatus.rejected => (
        AppSemantic.danger,
        l10n.requestMgrRejected,
        false,
      ),
      _ when row.managerApproved => (
        AppSemantic.success,
        l10n.requestMgrApproved,
        true,
      ),
      _ => (AppSemantic.warning, l10n.requestMgrPending, false),
    };
    final color = semantic.fg(context);
    final style = context.appTextStyles.emphasisMedium.copyWith(color: color);
    if (!showCheck) return Text(text, style: style);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.check, size: 13, color: color),
        const SizedBox(width: 3),
        Text(text, style: style),
      ],
    );
  }
}
