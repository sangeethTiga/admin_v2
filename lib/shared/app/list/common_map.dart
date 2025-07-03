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
  ListOfDemo(name: 'Today', id: 1),
  ListOfDemo(name: 'Weak', id: 2),
  ListOfDemo(name: 'Month', id: 3),
  ListOfDemo(name: 'Year', id: 4),
  // ListOfDemo(name: 'Thursday', id: 3),
  // ListOfDemo(name: 'Friday', id: 3),
  // ListOfDemo(name: 'Saturday', id: 3),
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

class Item {
  int id;
  String title;
  bool isSelected;

  Item({required this.id, required this.title, this.isSelected = false});
}

List<Item> mapItems = [
  Item(id: 0, title: 'Order Date'),
  Item(id: 1, title: 'Delivery Date'),
  Item(id: 2, title: 'Pick Up Date'),
];

class PurchaseType {
  int? id;
  String? name;
  PurchaseType({this.id, this.name});
}

List<PurchaseType> purchaseTypes = [
  PurchaseType(name: 'All', id: 0),
  PurchaseType(name: 'Cash', id: 1),
  PurchaseType(name: 'Card', id: 2),
];

class Product {
  int? filterId;
  String? name;
  Product({this.filterId, this.name});
}

List<Product> products = [
  Product(filterId: 0, name: 'All Products'),
  Product(filterId: 1, name: 'Out of stock products'),
  Product(filterId: 2, name: 'Hidden Products'),
  Product(filterId: 3, name: 'Stock Less than or equal'),
  Product(filterId: 4, name: 'Variant Products'),
  Product(filterId: 5, name: 'Best Selling'),
  Product(filterId: 6, name: 'Featured'),
  Product(filterId: 7, name: 'Not Hidden'),
  Product(filterId: 8, name: 'Purchasable'),
  Product(filterId: 9, name: 'Sellable'),
  Product(filterId: 10, name: 'POS Only'),
];
