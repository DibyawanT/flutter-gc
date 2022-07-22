import 'dart:convert';

List<Order> orderFromJson(String str) => List<Order>.from(json.decode(str).map((x) => Order.fromJson(x)));

String orderToJson(List<Order> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Order {
    Order({
        required this.id,
        required this.createdAt,
        required this.empName,
        required this.foodName,
        required this.unitPrice,
        required this.qty,
        required this.totalAmount,
    });

    int id;
    DateTime createdAt;
    String empName;
    String foodName;
    int unitPrice;
    int qty;
    int totalAmount;

    factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
        empName: json["emp_name"],
        foodName: json["food_name"],
        unitPrice: json["unit_price"],
        qty: json["qty"],
        totalAmount: json["total_amount"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "createdAt": createdAt.toIso8601String(),
        "emp_name": empName,
        "food_name": foodName,
        "unit_price": unitPrice,
        "qty": qty,
        "total_amount": totalAmount,
    };
}