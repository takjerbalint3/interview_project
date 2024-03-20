import 'package:dio/dio.dart';
import 'package:interview_project_frontend/features/api/backend/client/client.dart';
import 'package:interview_project_frontend/features/api/backend/providers/api_provider/api_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client_provider.g.dart';

@riverpod
ApiClient apiClient(
  ApiClientRef ref, {
  void Function(DioException, ErrorInterceptorHandler)? onError,
}) {
  final api = ref.watch(apiProvider(onError: onError));
  final client = ApiClient(api.instance);
  return client;
}
