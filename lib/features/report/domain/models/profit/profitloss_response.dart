import 'package:freezed_annotation/freezed_annotation.dart';
part 'profitloss_response.freezed.dart';
part 'profitloss_response.g.dart';

@freezed
class ProfitlossResponse with _$ProfitlossResponse {
  const factory ProfitlossResponse({
    @JsonKey(name: "receipts_data") List<Datum>? receiptsData,
    @JsonKey(name: "payment_data") List<Datum>? paymentData,
  }) = _ProfitlossResponse;

  factory ProfitlossResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfitlossResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "account_head_name") String? accountHeadName,
    @JsonKey(name: "amount") double? amount,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
