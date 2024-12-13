// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_services_from_keychain.freezed.dart';
part 'get_services_from_keychain.g.dart';

@freezed
class GetServicesFromKeychainResult with _$GetServicesFromKeychainResult {
  const factory GetServicesFromKeychainResult({
    required List<Service> services,
  }) = _GetServicesFromKeychainResult;
  const GetServicesFromKeychainResult._();

  factory GetServicesFromKeychainResult.fromJson(Map<String, dynamic> json) =>
      _$GetServicesFromKeychainResultFromJson(json);
}

@freezed
class GetServicesFromKeychainRequest with _$GetServicesFromKeychainRequest {
  const factory GetServicesFromKeychainRequest() =
      _GetServicesFromKeychainRequest;
  const GetServicesFromKeychainRequest._();

  factory GetServicesFromKeychainRequest.fromJson(Map<String, dynamic> json) =>
      _$GetServicesFromKeychainRequestFromJson(json);
}
