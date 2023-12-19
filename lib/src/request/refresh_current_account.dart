import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_current_account.freezed.dart';
part 'refresh_current_account.g.dart';

@freezed
class RefreshCurrentAccountRequest with _$RefreshCurrentAccountRequest {
  const factory RefreshCurrentAccountRequest() = _RefreshCurrentAccountRequest;
  const RefreshCurrentAccountRequest._();

  factory RefreshCurrentAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshCurrentAccountRequestFromJson(json);
}

@freezed
class RefreshCurrentAccountResponse with _$RefreshCurrentAccountResponse {
  const factory RefreshCurrentAccountResponse() =
      _RefreshCurrentAccountResponse;
  const RefreshCurrentAccountResponse._();

  factory RefreshCurrentAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshCurrentAccountResponseFromJson(json);
}
