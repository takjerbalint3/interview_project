import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

Widget loading(BuildContext context) {
  return const Center(
    child: CircularProgressIndicator(),
  );
}

Widget errorWidget(BuildContext context, {required DioException error, required String defaultErrorMessage}) {
  return Center(
    child: Text(error.message ?? defaultErrorMessage),
  );
}
