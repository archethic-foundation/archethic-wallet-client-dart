import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_service.freezed.dart';
part 'add_service.g.dart';

@freezed
class AddServiceRequest with _$AddServiceRequest {
  const factory AddServiceRequest({required String name}) = _AddServiceRequest;
  const AddServiceRequest._();

  factory AddServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$AddServiceRequestFromJson(json);
}
