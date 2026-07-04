import 'package:go_router/go_router.dart';

import '../../modules/admin/dashboard/cubit/dashboard_cubit.dart';
import '../../modules/admin/dashboard/dashboard_screen.dart';
import '../../modules/admin/requests/detail/cubit/request_detail_cubit.dart';
import '../../modules/admin/requests/detail/request_detail_screen.dart';
import '../../modules/admin/requests/list/cubit/request_list_cubit.dart';
import '../../modules/admin/requests/list/request_list_screen.dart';
import '../../modules/admin/shell/admin_shell.dart';
import '../../views/component_showcase/component_showcase_screen.dart';
import '../../views/invalid_route/invalid_route_screen.dart';
import 'app_routes.dart';

/// GoRouter for the IT Admin (web/desktop) variant.
///
/// Dashboard and Requests live inside a [StatefulShellRoute] so [AdminShell]
/// (sidebar + top bar) is built once and stays mounted across navigation —
/// only the active branch's content swaps, with no page-transition replacing
/// the whole screen on every sidebar tap. Each branch keeps its own
/// navigator/back-stack, so drilling into a request's detail and returning
/// to the list preserves the list's scroll/filter state.
GoRouter buildAdminRouter() {
  return GoRouter(
    initialLocation: Routes.adminDashboard.path,
    errorBuilder: (context, state) =>
        InvalidRouteScreen(path: state.uri.toString()),
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => AdminShell(
          navigationShell: navigationShell,
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.adminDashboard.path,
                name: Routes.adminDashboard.name,
                builder: (context, state) =>
                    const DashboardScreen().withProvider((_) => DashboardCubit()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.adminRequests.path,
                name: Routes.adminRequests.name,
                builder: (context, state) => const RequestListScreen()
                    .withProvider((_) => RequestListCubit()),
                routes: [
                  GoRoute(
                    // Relative to the parent `adminRequests` path above —
                    // go_router resolves nested `GoRoute.path` values
                    // relative to their parent, resulting in the full
                    // `/requests/:id` used by `Routes.adminRequestDetail`.
                    path: ':id',
                    name: Routes.adminRequestDetail.name,
                    builder: (context, state) {
                      final id = Uri.decodeComponent(
                        state.pathParameters['id'] ?? '',
                      );
                      return const RequestDetailScreen()
                          .withProvider((_) => RequestDetailCubit(id));
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: Routes.componentShowcase.path,
        name: Routes.componentShowcase.name,
        builder: (context, state) => const ComponentShowcaseScreen(),
      ),
    ],
  );
}
