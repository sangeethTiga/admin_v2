import 'package:admin_v2/features/orders/domain/models/order/order_response.dart';
import 'package:admin_v2/shared/utils/helper/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'tax_response.freezed.dart';
part 'tax_response.g.dart';



@freezed
class TaxResponse with _$TaxResponse {
    const factory TaxResponse({
        @JsonKey(name: "total_tax_collected",fromJson: parseNumberAsDouble)
        double? totalTaxCollected,
        @JsonKey(name: "total_tax_paid")
        int? totalTaxPaid,
        @JsonKey(name: "net_payable")
        double? netPayable,
    }) = _TaxResponse;

    factory TaxResponse.fromJson(Map<String, dynamic> json) => _$TaxResponseFromJson(json);
}