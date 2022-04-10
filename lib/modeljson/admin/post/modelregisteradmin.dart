// To parse this JSON data, do
//
//     final registerAdmin = registerAdminFromJson(jsonString);

import 'dart:convert';

RegisterAdmin registerAdminFromJson(String str) =>
    RegisterAdmin.fromJson(json.decode(str));

String registerAdminToJson(RegisterAdmin data) => json.encode(data.toJson());

class RegisterAdmin {
  RegisterAdmin({
    this.customer,
  });

  Customer? customer;

  factory RegisterAdmin.fromJson(Map<String, dynamic> json) => RegisterAdmin(
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
    this.email,
    this.firstName,
    this.lastName,
    this.passwordHash,
    this.hasAccount,
    this.id,
    this.billingAddressId,
    this.phone,
    this.deletedAt,
    this.metadata,
    this.createdAt,
    this.updatedAt,
  });

  String? email;
  String? firstName;
  String? lastName;
  String? passwordHash;
  bool? hasAccount;
  String? id;
  dynamic billingAddressId;
  dynamic phone;
  dynamic deletedAt;
  dynamic metadata;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        email: json["email"] == null ? null : json["email"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        passwordHash:
            json["password_hash"] == null ? null : json["password_hash"],
        hasAccount: json["has_account"] == null ? null : json["has_account"],
        id: json["id"] == null ? null : json["id"],
        billingAddressId: json["billing_address_id"],
        phone: json["phone"],
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "email": email == null ? null : email,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "password_hash": passwordHash == null ? null : passwordHash,
        "has_account": hasAccount == null ? null : hasAccount,
        "id": id == null ? null : id,
        "billing_address_id": billingAddressId,
        "phone": phone,
        "deleted_at": deletedAt,
        "metadata": metadata,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
      };
}
