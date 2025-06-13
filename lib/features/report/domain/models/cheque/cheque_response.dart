import 'package:freezed_annotation/freezed_annotation.dart';


part 'cheque_response.freezed.dart';
part 'cheque_response.g.dart';



@freezed
class ChequeResponse with _$ChequeResponse {
    const factory ChequeResponse({
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "error_code")
        int? errorCode,
        @JsonKey(name: "data")
        List<ChequeTrans>? data,
    }) = _ChequeResponse;

    factory ChequeResponse.fromJson(Map<String, dynamic> json) => _$ChequeResponseFromJson(json);
}

@freezed
class ChequeTrans with _$ChequeTrans {
    const factory ChequeTrans({
        @JsonKey(name: "cheque_track_id")
        int? chequeTrackId,
        @JsonKey(name: "outlet_name")
        String? outletName,
        @JsonKey(name: "cheque_issue_date")
        DateTime? chequeIssueDate,
        @JsonKey(name: "bank_name")
        String? bankName,
        @JsonKey(name: "cheque_date")
        DateTime? chequeDate,
        @JsonKey(name: "cheque_number")
        String? chequeNumber,
        @JsonKey(name: "amount")
        String? amount,
        @JsonKey(name: "narration")
        String? narration,
        @JsonKey(name: "status")
        int? status,
        @JsonKey(name: "created_by")
        dynamic createdBy,
        @JsonKey(name: "updated_at")
        DateTime? updatedAt,
        @JsonKey(name: "updated_by")
        dynamic updatedBy,
        @JsonKey(name: "is_active")
        int? isActive,
        @JsonKey(name: "store_id")
        int? storeId,
        @JsonKey(name: "created_at")
        DateTime? createdAt,
        @JsonKey(name: "bank_id")
        int? bankId,
        @JsonKey(name: "status_name")
        String? statusName,
    }) = _ChequeTrans;

    factory ChequeTrans.fromJson(Map<String, dynamic> json) => _$ChequeTransFromJson(json);
}