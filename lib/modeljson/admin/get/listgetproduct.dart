// To parse this JSON data, do
//
//     final productType = productTypeFromJson(jsonString);

import 'dart:convert';

ProductType productTypeFromJson(String str) =>
    ProductType.fromJson(json.decode(str));

String productTypeToJson(ProductType data) => json.encode(data.toJson());

class ProductType {
  ProductType({
    this.products,
    this.count,
    this.offset,
    this.limit,
  });

  List<Product>? products;
  int? count;
  int? offset;
  int? limit;

  factory ProductType.fromJson(Map<String, dynamic> json) => ProductType(
        products: json["products"] == null
            ? null
            : List<Product>.from(
                json["products"].map((x) => Product.fromJson(x))),
        count: json["count"] == null ? null : json["count"],
        offset: json["offset"] == null ? null : json["offset"],
        limit: json["limit"] == null ? null : json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "products": products == null
            ? null
            : List<dynamic>.from(products!.map((x) => x.toJson())),
        "count": count == null ? null : count,
        "offset": offset == null ? null : offset,
        "limit": limit == null ? null : limit,
      };
}

class Product {
  Product({
    this.id,
    this.title,
    this.subtitle,
    this.description,
    this.handle,
    this.isGiftcard,
    this.status,
    this.thumbnail,
    this.profileId,
    this.weight,
    this.length,
    this.height,
    this.width,
    this.hsCode,
    this.originCountry,
    this.midCode,
    this.material,
    this.collectionId,
    this.typeId,
    this.discountable,
    this.externalId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
    this.variants,
    this.images,
    this.options,
    this.tags,
    this.type,
    this.collection,
  });

  String? id;
  String? title;
  dynamic subtitle;
  String? description;
  String? handle;
  bool? isGiftcard;
  String? status;
  String? thumbnail;
  String? profileId;
  int? weight;
  dynamic length;
  dynamic height;
  dynamic width;
  dynamic hsCode;
  dynamic originCountry;
  dynamic midCode;
  dynamic material;
  dynamic collectionId;
  dynamic typeId;
  bool? discountable;
  dynamic externalId;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic metadata;
  List<Variant>? variants;
  List<Image>? images;
  List<ProductOption>? options;
  List<dynamic>? tags;
  dynamic type;
  dynamic collection;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        subtitle: json["subtitle"],
        description: json["description"] == null ? null : json["description"],
        handle: json["handle"] == null ? null : json["handle"],
        isGiftcard: json["is_giftcard"] == null ? null : json["is_giftcard"],
        status: json["status"] == null ? null : json["status"],
        thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
        profileId: json["profile_id"] == null ? null : json["profile_id"],
        weight: json["weight"] == null ? null : json["weight"],
        length: json["length"],
        height: json["height"],
        width: json["width"],
        hsCode: json["hs_code"],
        originCountry: json["origin_country"],
        midCode: json["mid_code"],
        material: json["material"],
        collectionId: json["collection_id"],
        typeId: json["type_id"],
        discountable:
            json["discountable"] == null ? null : json["discountable"],
        externalId: json["external_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
        variants: json["variants"] == null
            ? null
            : List<Variant>.from(
                json["variants"].map((x) => Variant.fromJson(x))),
        images: json["images"] == null
            ? null
            : List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        options: json["options"] == null
            ? null
            : List<ProductOption>.from(
                json["options"].map((x) => ProductOption.fromJson(x))),
        tags: json["tags"] == null
            ? null
            : List<dynamic>.from(json["tags"].map((x) => x)),
        type: json["type"],
        collection: json["collection"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "subtitle": subtitle,
        "description": description == null ? null : description,
        "handle": handle == null ? null : handle,
        "is_giftcard": isGiftcard == null ? null : isGiftcard,
        "status": status == null ? null : status,
        "thumbnail": thumbnail == null ? null : thumbnail,
        "profile_id": profileId == null ? null : profileId,
        "weight": weight == null ? null : weight,
        "length": length,
        "height": height,
        "width": width,
        "hs_code": hsCode,
        "origin_country": originCountry,
        "mid_code": midCode,
        "material": material,
        "collection_id": collectionId,
        "type_id": typeId,
        "discountable": discountable == null ? null : discountable,
        "external_id": externalId,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
        "variants": variants == null
            ? null
            : List<dynamic>.from(variants!.map((x) => x.toJson())),
        "images": images == null
            ? null
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "options": options == null
            ? null
            : List<dynamic>.from(options!.map((x) => x.toJson())),
        "tags": tags == null ? null : List<dynamic>.from(tags!.map((x) => x)),
        "type": type,
        "collection": collection,
      };
}

class Image {
  Image({
    this.id,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
  });

  String? id;
  String? url;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic metadata;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"] == null ? null : json["id"],
        url: json["url"] == null ? null : json["url"],
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
        "url": url == null ? null : url,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
      };
}

class ProductOption {
  ProductOption({
    this.id,
    this.title,
    this.productId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
  });

  String? id;
  String? title;
  String? productId;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic metadata;

  factory ProductOption.fromJson(Map<String, dynamic> json) => ProductOption(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        productId: json["product_id"] == null ? null : json["product_id"],
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
        "title": title == null ? null : title,
        "product_id": productId == null ? null : productId,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
      };
}

class Variant {
  Variant({
    this.id,
    this.title,
    this.productId,
    this.sku,
    this.barcode,
    this.ean,
    this.upc,
    this.inventoryQuantity,
    this.allowBackorder,
    this.manageInventory,
    this.hsCode,
    this.originCountry,
    this.midCode,
    this.material,
    this.weight,
    this.length,
    this.height,
    this.width,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
    this.prices,
    this.options,
  });

  String? id;
  String? title;
  String? productId;
  dynamic sku;
  dynamic barcode;
  dynamic ean;
  dynamic upc;
  int? inventoryQuantity;
  bool? allowBackorder;
  bool? manageInventory;
  dynamic hsCode;
  dynamic originCountry;
  dynamic midCode;
  dynamic material;
  dynamic weight;
  dynamic length;
  dynamic height;
  dynamic width;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic metadata;
  List<Price>? prices;
  List<VariantOption>? options;

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        productId: json["product_id"] == null ? null : json["product_id"],
        sku: json["sku"],
        barcode: json["barcode"],
        ean: json["ean"],
        upc: json["upc"],
        inventoryQuantity: json["inventory_quantity"] == null
            ? null
            : json["inventory_quantity"],
        allowBackorder:
            json["allow_backorder"] == null ? null : json["allow_backorder"],
        manageInventory:
            json["manage_inventory"] == null ? null : json["manage_inventory"],
        hsCode: json["hs_code"],
        originCountry: json["origin_country"],
        midCode: json["mid_code"],
        material: json["material"],
        weight: json["weight"],
        length: json["length"],
        height: json["height"],
        width: json["width"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
        prices: json["prices"] == null
            ? null
            : List<Price>.from(json["prices"].map((x) => Price.fromJson(x))),
        options: json["options"] == null
            ? null
            : List<VariantOption>.from(
                json["options"].map((x) => VariantOption.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "product_id": productId == null ? null : productId,
        "sku": sku,
        "barcode": barcode,
        "ean": ean,
        "upc": upc,
        "inventory_quantity":
            inventoryQuantity == null ? null : inventoryQuantity,
        "allow_backorder": allowBackorder == null ? null : allowBackorder,
        "manage_inventory": manageInventory == null ? null : manageInventory,
        "hs_code": hsCode,
        "origin_country": originCountry,
        "mid_code": midCode,
        "material": material,
        "weight": weight,
        "length": length,
        "height": height,
        "width": width,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
        "prices": prices == null
            ? null
            : List<dynamic>.from(prices!.map((x) => x.toJson())),
        "options": options == null
            ? null
            : List<dynamic>.from(options!.map((x) => x.toJson())),
      };
}

class VariantOption {
  VariantOption({
    this.id,
    this.value,
    this.optionId,
    this.variantId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
  });

  String? id;
  String? value;
  String? optionId;
  String? variantId;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic metadata;

  factory VariantOption.fromJson(Map<String, dynamic> json) => VariantOption(
        id: json["id"] == null ? null : json["id"],
        value: json["value"] == null ? null : json["value"],
        optionId: json["option_id"] == null ? null : json["option_id"],
        variantId: json["variant_id"] == null ? null : json["variant_id"],
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
        "value": value == null ? null : value,
        "option_id": optionId == null ? null : optionId,
        "variant_id": variantId == null ? null : variantId,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
      };
}

class Price {
  Price({
    this.id,
    this.currencyCode,
    this.amount,
    this.saleAmount,
    this.variantId,
    this.regionId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  String? id;
  String? currencyCode;
  int? amount;
  dynamic saleAmount;
  String? variantId;
  dynamic regionId;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        id: json["id"] == null ? null : json["id"],
        currencyCode:
            json["currency_code"] == null ? null : json["currency_code"],
        amount: json["amount"] == null ? null : json["amount"],
        saleAmount: json["sale_amount"],
        variantId: json["variant_id"] == null ? null : json["variant_id"],
        regionId: json["region_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "currency_code": currencyCode == null ? null : currencyCode,
        "amount": amount == null ? null : amount,
        "sale_amount": saleAmount,
        "variant_id": variantId == null ? null : variantId,
        "region_id": regionId,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
      };
}
