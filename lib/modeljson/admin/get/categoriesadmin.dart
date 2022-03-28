// To parse this JSON data, do
//
//     final adminCategories = adminCategoriesFromJson(jsonString);

import 'dart:convert';

class AdminCategories {
  AdminCategories({
    this.collections,
    this.count,
    this.offset,
    this.limit,
  });

  List<Collection>? collections;
  int? count;
  int? offset;
  int? limit;

  factory AdminCategories.fromRawJson(String str) =>
      AdminCategories.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AdminCategories.fromJson(Map<String, dynamic> json) =>
      AdminCategories(
        collections: json["collections"] == null
            ? null
            : List<Collection>.from(
                json["collections"].map((x) => Collection.fromJson(x))),
        count: json["count"] == null ? null : json["count"],
        offset: json["offset"] == null ? null : json["offset"],
        limit: json["limit"] == null ? null : json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "collections": collections == null
            ? null
            : List<dynamic>.from(collections!.map((x) => x.toJson())),
        "count": count == null ? null : count,
        "offset": offset == null ? null : offset,
        "limit": limit == null ? null : limit,
      };
}

class Collection {
  Collection({
    this.id,
    this.title,
    this.handle,
    this.createdAt,
    this.updatedAt,
    this.products,
  });

  String? id;
  String? title;
  String? handle;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<dynamic>? products;

  factory Collection.fromRawJson(String str) =>
      Collection.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        handle: json["handle"] == null ? null : json["handle"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        products: json["products"] == null
            ? null
            : List<dynamic>.from(json["products"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "handle": handle == null ? null : handle,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "products": products == null
            ? null
            : List<dynamic>.from(products!.map((x) => x)),
      };
}
