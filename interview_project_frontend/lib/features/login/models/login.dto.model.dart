import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.dto.model.freezed.dart';
part 'login.dto.model.g.dart';

@freezed
class LoginDto with _$LoginDto {
  const factory LoginDto({
    // ignore: invalid_annotation_target
    required String username,
    required String password,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson(json);
}
