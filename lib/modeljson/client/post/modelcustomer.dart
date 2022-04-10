// To parse this JSON data, do
//
//     final customerAuth = customerAuthFromJson(jsonString);

import 'dart:convert';

class CustomerAuth {
  CustomerAuth({
    this.customer,
  });

  Customer? customer;

  factory CustomerAuth.fromRawJson(String str) =>
      CustomerAuth.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomerAuth.fromJson(Map<String, dynamic> json) => CustomerAuth(
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
    this.passwordHash,
    this.phone,
    this.hasAccount,
    this.orders,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
  });

  String? id;
  String? email;
  dynamic firstName;
  dynamic lastName;
  dynamic billingAddressId;
  dynamic passwordHash;
  dynamic phone;
  bool? hasAccount;
  List<dynamic>? orders;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic metadata;

  factory Customer.fromRawJson(String str) =>
      Customer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json["id"] == null ? null : json["id"],
        email: json["email"] == null ? null : json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        billingAddressId: json["billing_address_id"],
        passwordHash: json["password_hash"],
        phone: json["phone"],
        hasAccount: json["has_account"] == null ? null : json["has_account"],
        orders: json["orders"] == null
            ? null
            : List<dynamic>.from(json["orders"].map((x) => x)),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "email": email == null ? null : email,
        "first_name": firstName,
        "last_name": lastName,
        "billing_address_id": billingAddressId,
        "password_hash": passwordHash,
        "phone": phone,
        "has_account": hasAccount == null ? null : hasAccount,
        "orders":
            orders == null ? null : List<dynamic>.from(orders!.map((x) => x)),
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
      };
}
