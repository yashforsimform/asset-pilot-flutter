import 'package:flutter_bloc/flutter_bloc.dart';

/// Emit that no-ops when the cubit has already been closed.
///
/// Convention mandates `safeEmit()` over raw `emit()` to avoid
/// "emit after close" errors when async work completes after a screen
/// (and its cubit) has been disposed.
extension SafeEmit<S> on Cubit<S> {
  void safeEmit(S state) {
    if (isClosed) return;
    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
    emit(state);
  }
}
