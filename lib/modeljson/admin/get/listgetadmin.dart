// To parse this JSON data, do
//
//     final listAdmin = listAdminFromJson(jsonString);

import 'dart:convert';

ListAdmin listAdminFromJson(String str) => ListAdmin.fromJson(json.decode(str));

String listAdminToJson(ListAdmin data) => json.encode(data.toJson());

class ListAdmin {
  ListAdmin({
    this.customer,
  });

  Customer? customer;

  factory ListAdmin.fromJson(Map<String, dynamic> json) => ListAdmin(
        customer: json["customer"] == null
            ? null
            : Customer.fromJson(json["customer"]),
      );

  Map<String, dynamic> toJson() => {
        "customer": customer == null ? null : customer!.toJson(),
      };
}

class Customer {
  Customer({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.billingAddressId,
    this.phone,
    this.hasAccount,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
    this.orders,
    this.shippingAddresses,
  });

  String? id;
  String? email;
  String? firstName;
  String? lastName;
  dynamic billingAddressId;
  dynamic phone;
  bool? hasAccount;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic metadata;
  List<dynamic>? orders;
  List<dynamic>? shippingAddresses;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json["id"] == null ? null : json["id"],
        email: json["email"] == null ? null : json["email"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        billingAddressId: json["billing_address_id"],
        phone: json["phone"],
        hasAccount: json["has_account"] == null ? null : json["has_account"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
        orders: json["orders"] == null
            ? null
            : List<dynamic>.from(json["orders"].map((x) => x)),
        shippingAddresses: json["shipping_addresses"] == null
            ? null
            : List<dynamic>.from(json["shipping_addresses"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "email": email == null ? null : email,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "billing_address_id": billingAddressId,
        "phone": phone,
        "has_account": hasAccount == null ? null : hasAccount,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
        "orders":
            orders == null ? null : List<dynamic>.from(orders!.map((x) => x)),
        "shipping_addresses": shippingAddresses == null
            ? null
            : List<dynamic>.from(shippingAddresses!.map((x) => x)),
      };
}
