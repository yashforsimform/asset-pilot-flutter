import '../../../models/api_response/api_result.dart';
import '../../../models/exceptions/app_exception.dart';
import '../api_repository/api_repository.dart';
import 'models/user_res_dm.dart';

/// Repository for authentication.
///
/// Singleton via a private constructor + [instance], per convention. NOTE:
/// this scaffold is not wired to a live backend — [login] returns MOCKED data.
/// When the API is ready, replace the mock body with
/// `apiService.login(LoginReqDm(...))`.
class AuthRepository extends Repository {
  AuthRepository._();

  static final AuthRepository instance = AuthRepository._();

  /// Log in with [email] / [password]. Currently mocked.
  Future<ApiResult<UserResDm>> login({
    required String email,
    required String password,
  }) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 600));
    if (email.isEmpty || password.isEmpty) {
      // Demonstrates the failure branch flowing through NetworkState.
      return const ApiFailure<UserResDm>(
        NetworkException('Email and password are required.'),
      );
    }
    return ApiSuccess<UserResDm>(
      UserResDm(
        id: 'u_001',
        name: 'Arjun Mehta',
        email: email,
        role: 'employee',
        accessToken: 'mock-token',
      ),
    );
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.login(LoginReqDm(email: email, password: password));
  }
}
