import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'dashboard_state.dart';

/// Loads IT Admin dashboard KPIs. Mocked for the scaffold.
class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState());

  Future<void> loadKpis() async {
    safeEmit(state.copyWith(kpis: const Loading()));
    await Future<void>.delayed(const Duration(milliseconds: 400));
    safeEmit(
      state.copyWith(
        kpis: const Success(
          DashboardKpis(
            totalDevices: 842,
            assigned: 611,
            pendingRequests: 28,
            openSupport: 14,
          ),
        ),
      ),
    );
  }
}
