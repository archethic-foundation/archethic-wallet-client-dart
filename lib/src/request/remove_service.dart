import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_service.freezed.dart';
part 'remove_service.g.dart';

@freezed
class RemoveServiceRequest with _$RemoveServiceRequest {
  const factory RemoveServiceRequest({required String name}) =
      _RemoveServiceRequest;
  const RemoveServiceRequest._();

  factory RemoveServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$RemoveServiceRequestFromJson(json);
}
