// To parse this JSON data, do
//
//     final storeName = storeNameFromJson(jsonString);

import 'dart:convert';

class StoreName {
  StoreName({
    this.store,
  });

  Store? store;

  factory StoreName.fromRawJson(String str) =>
      StoreName.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StoreName.fromJson(Map<String, dynamic> json) => StoreName(
        store: json["store"] == null ? null : Store.fromJson(json["store"]),
      );

  Map<String, dynamic> toJson() => {
        "store": store == null ? null : store!.toJson(),
      };
}

class Store {
  Store({
    this.id,
    this.name,
    this.defaultCurrencyCode,
    this.swapLinkTemplate,
    this.paymentLinkTemplate,
    this.inviteLinkTemplate,
    this.createdAt,
    this.updatedAt,
    this.metadata,
    this.currencies,
    this.defaultCurrency,
    this.paymentProviders,
    this.fulfillmentProviders,
  });

  String? id;
  String? name;
  String? defaultCurrencyCode;
  dynamic swapLinkTemplate;
  dynamic paymentLinkTemplate;
  dynamic inviteLinkTemplate;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic metadata;
  List<Currency>? currencies;
  Currency? defaultCurrency;
  List<MentProvider>? paymentProviders;
  List<MentProvider>? fulfillmentProviders;

  factory Store.fromRawJson(String str) => Store.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Store.fromJson(Map<String, dynamic> json) => Store(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        defaultCurrencyCode: json["default_currency_code"] == null
            ? null
            : json["default_currency_code"],
        swapLinkTemplate: json["swap_link_template"],
        paymentLinkTemplate: json["payment_link_template"],
        inviteLinkTemplate: json["invite_link_template"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        metadata: json["metadata"],
        currencies: json["currencies"] == null
            ? null
            : List<Currency>.from(
                json["currencies"].map((x) => Currency.fromJson(x))),
        defaultCurrency: json["default_currency"] == null
            ? null
            : Currency.fromJson(json["default_currency"]),
        paymentProviders: json["payment_providers"] == null
            ? null
            : List<MentProvider>.from(
                json["payment_providers"].map((x) => MentProvider.fromJson(x))),
        fulfillmentProviders: json["fulfillment_providers"] == null
            ? null
            : List<MentProvider>.from(json["fulfillment_providers"]
                .map((x) => MentProvider.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "default_currency_code":
            defaultCurrencyCode == null ? null : defaultCurrencyCode,
        "swap_link_template": swapLinkTemplate,
        "payment_link_template": paymentLinkTemplate,
        "invite_link_template": inviteLinkTemplate,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "metadata": metadata,
        "currencies": currencies == null
            ? null
            : List<dynamic>.from(currencies!.map((x) => x.toJson())),
        "default_currency":
            defaultCurrency == null ? null : defaultCurrency!.toJson(),
        "payment_providers": paymentProviders == null
            ? null
            : List<dynamic>.from(paymentProviders!.map((x) => x.toJson())),
        "fulfillment_providers": fulfillmentProviders == null
            ? null
            : List<dynamic>.from(fulfillmentProviders!.map((x) => x.toJson())),
      };
}

class Currency {
  Currency({
    this.code,
    this.symbol,
    this.symbolNative,
    this.name,
  });

  String? code;
  String? symbol;
  String? symbolNative;
  String? name;

  factory Currency.fromRawJson(String str) =>
      Currency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        code: json["code"] == null ? null : json["code"],
        symbol: json["symbol"] == null ? null : json["symbol"],
        symbolNative:
            json["symbol_native"] == null ? null : json["symbol_native"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "symbol": symbol == null ? null : symbol,
        "symbol_native": symbolNative == null ? null : symbolNative,
        "name": name == null ? null : name,
      };
}

class MentProvider {
  MentProvider({
    this.id,
    this.isInstalled,
  });

  String? id;
  bool? isInstalled;

  factory MentProvider.fromRawJson(String str) =>
      MentProvider.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MentProvider.fromJson(Map<String, dynamic> json) => MentProvider(
        id: json["id"] == null ? null : json["id"],
        isInstalled: json["is_installed"] == null ? null : json["is_installed"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "is_installed": isInstalled == null ? null : isInstalled,
      };
}
