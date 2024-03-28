import 'package:flutter/material.dart';
import 'package:interview_project_frontend/features/api/backend/client/client.dart';
import 'package:interview_project_frontend/features/api/backend/providers/client_provider/client_provider.dart';
import 'package:interview_project_frontend/features/login/models/login.dto.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login.provider.g.dart';

@Riverpod(keepAlive: true)
class Login extends _$Login {
  ApiClient get apiClient => ref.read(
        apiClientProvider(
          onError: (e, handler) {
            //COULD DO SOME CUSTOM ERROR HANDLING + SNACK MESSAGE
            debugPrint(e.message);
          },
        ),
      );
  //Could add limit as a parameter in the future
  @override
  Future<String?> build() async {
    return null;
  }

  //Could add limit as a parameter in the future
  Future<void> login({required LoginDto loginDto}) async {
    state = AsyncValue.data(await apiClient.login(loginDto: loginDto));
  }
}
