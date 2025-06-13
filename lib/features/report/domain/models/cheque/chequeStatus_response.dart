import 'package:freezed_annotation/freezed_annotation.dart';


part 'chequeStatus_response.freezed.dart';
part 'chequeStatus_response.g.dart';



@freezed
class ChequestatusResponse with _$ChequestatusResponse {
    const factory ChequestatusResponse({
        @JsonKey(name: "cheque_status_id")
        int? chequeStatusId,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "cheque_status_name")
        String? chequeStatusName,
        @JsonKey(name: "cheque_status_arabic_name")
        String? chequeStatusArabicName,
        @JsonKey(name: "menu_order")
        int? menuOrder,
        @JsonKey(name: "is_active")
        int? isActive,
        @JsonKey(name: "created_at")
        DateTime? createdAt,
        @JsonKey(name: "updated_at")
        dynamic updatedAt,
    }) = _ChequestatusResponse;

    factory ChequestatusResponse.fromJson(Map<String, dynamic> json) => _$ChequestatusResponseFromJson(json);
}