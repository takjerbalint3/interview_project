import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:interview_project_frontend/features/api/backend/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_provider.g.dart';

@riverpod
Api api(
  ApiRef ref, {
  void Function(DioException e, ErrorInterceptorHandler handler)? onError,
}) {
  //FIXME change baseUrl if not tested on emulator :)
  final dio = Dio(BaseOptions(baseUrl: 'http://10.0.2.2:3000'));
  dio.interceptors.add(
    InterceptorsWrapper(
      onResponse: (e, handler) {
        debugPrint('Http status: ${e.statusCode} - data: ${e.data}');
        return handler.next(e);
      },
      onRequest: (e, handler) async {
        return handler.next(e);
      },
      onError: (e, handler) async {
        if (onError != null) {
          onError(e, handler);
        }
        return handler.next(e);
      },
    ),
  );
  return Api(dio: dio);
}
