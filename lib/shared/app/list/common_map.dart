import 'package:admin_v2/shared/constants/asstes.dart';

class Dates {
  String? title;
  String? id;

  Dates({this.id, this.title});
}

List<Dates> custDates = [
  Dates(title: 'Days', id: '01'),
  Dates(title: 'Hrs', id: '08'),
  Dates(title: 'Min', id: '42'),
  Dates(title: 'Sec', id: '23'),
];
List<ListOfDemo> custDate = [
  ListOfDemo(name: 'Sunday', id: 0),
  ListOfDemo(name: 'Monday', id: 1),
  ListOfDemo(name: 'Tuesday', id: 2),
  ListOfDemo(name: 'Wednesday', id: 3),
  ListOfDemo(name: 'Thursday', id: 3),
  ListOfDemo(name: 'Friday', id: 3),
  ListOfDemo(name: 'Saturday', id: 3),
];
List<ListOfDemo> payMethod = [
  ListOfDemo(name: 'Cash', id: 0),
  ListOfDemo(name: 'Card', id: 1),
  ListOfDemo(name: 'Online', id: 2),
];

class ListOfDemo {
  String? name;
  int? id;
  ListOfDemo({this.name, this.id});
}

class PaymentMethod {
  final String name;
  final String image;
  final bool isSelected;

  PaymentMethod({
    required this.name,
    required this.image,
    this.isSelected = false,
  });

  PaymentMethod copyWith({bool? isSelected}) {
    return PaymentMethod(
      name: name,
      image: image,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}

class AccountResponse {
  String? name;
  String? image;

  AccountResponse({this.image, this.name});
}

List<AccountResponse> accountList = [
  AccountResponse(name: 'Sales', image: sales),
  AccountResponse(name: 'Revenue', image: revenue),
  AccountResponse(name: 'Expense', image: expense),
  AccountResponse(name: 'Orders', image: orders),
  AccountResponse(name: 'Product', image: product),
  AccountResponse(name: 'Profit/loss', image: profit),
  AccountResponse(name: 'Customers', image: customer),
  AccountResponse(name: 'Day Summary', image: daySummary),
  AccountResponse(name: 'Purchase', image: purchase),
];

class StatusName {
  final String? name;
  final int? id;

  StatusName({this.id, this.name});
}

List<StatusName> statusList = [
  StatusName(name: 'Cancel', id: 1),
  StatusName(name: 'Re-Order', id: 2),
  StatusName(name: 'Track', id: 3),
  StatusName(name: 'View', id: 4),
];
