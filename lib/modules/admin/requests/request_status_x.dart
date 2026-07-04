import 'package:flutter/widgets.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';

/// Maps [RequestStatus]/[RequestPriority] onto the domain-blind
/// [AppSemantic] enum, per the widget library's convention (widgets never
/// import `values/enumeration/statuses.dart`; modules own this mapping).
extension RequestStatusX on RequestStatus {
  AppSemantic get semantic => switch (this) {
    RequestStatus.pendingMgrApproval => AppSemantic.neutral,
    RequestStatus.pendingItApproval => AppSemantic.warning,
    RequestStatus.assigned => AppSemantic.success,
    RequestStatus.rejected => AppSemantic.danger,
    RequestStatus.completed => AppSemantic.neutral,
    RequestStatus.cancelled => AppSemantic.neutral,
    RequestStatus.requested => AppSemantic.neutral,
  };

  String label(BuildContext context) => switch (this) {
    RequestStatus.pendingMgrApproval => context.l10n.requestFilterPendingRm,
    RequestStatus.pendingItApproval => context.l10n.requestFilterPendingIt,
    RequestStatus.assigned => context.l10n.requestFilterAssigned,
    RequestStatus.rejected => context.l10n.requestFilterRejected,
    RequestStatus.completed => context.l10n.requestFilterCompleted,
    RequestStatus.requested => context.l10n.requestDetailRequested,
    RequestStatus.cancelled => context.l10n.requestFilterRejected,
  };
}

extension RequestPriorityX on RequestPriority {
  AppSemantic get semantic => switch (this) {
    RequestPriority.low => AppSemantic.neutral,
    RequestPriority.medium => AppSemantic.info,
    RequestPriority.high => AppSemantic.danger,
  };

  String label(BuildContext context) => switch (this) {
    RequestPriority.low => context.l10n.priorityLow,
    RequestPriority.medium => context.l10n.priorityMedium,
    RequestPriority.high => context.l10n.priorityHigh,
  };
}
