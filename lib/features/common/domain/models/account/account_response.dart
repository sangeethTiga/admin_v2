import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_response.freezed.dart';
part 'account_response.g.dart';

@freezed
class AccountDataResponse with _$AccountDataResponse {
  const factory AccountDataResponse({
    @JsonKey(name: "account_head_id") int? accountHeadId,
    @JsonKey(name: "account_head_name") String? accountHeadName,
    @JsonKey(name: "transaction_type") int? transactionType,
    @JsonKey(name: "trans_type_name") String? transTypeName,
    @JsonKey(name: "account_type_id") int? accountTypeId,
    @JsonKey(name: "account_type_name") String? accountTypeName,
  }) = _AccountDataResponse;

  factory AccountDataResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountDataResponseFromJson(json);
}
