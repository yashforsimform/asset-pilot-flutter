import 'package:dio/dio.dart';

import '../../../utilities/api_utilities/dio_client.dart';
import 'api_service.dart';

/// Base class for every module repository.
///
/// Holds the shared [Dio] and the centralized [ApiService]. Module
/// repositories extend this and simply delegate to `apiService.*`.
abstract class Repository {
  Repository() : this.withDio(DioClient.instance.dio);

  Repository.withDio(this.dio) : apiService = ApiService(dio);

  final Dio dio;
  final ApiService apiService;
}
