import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(explicitToJson: true)
class EcommerceUnit {
  @JsonKey(includeIfNull: false)
  Ecommerce? ecommerce;

  EcommerceUnit({this.ecommerce});

  EcommerceUnit.fromJson(Map<String, dynamic> json) {
    ecommerce = json['ecommerce'] != null
        ? Ecommerce.fromJson(json['ecommerce'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (ecommerce != null) {
      data['ecommerce'] = ecommerce?.toJson();
    }
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Ecommerce {
  @JsonKey(includeIfNull: false)
  CommerceActivity? purchase;
  @JsonKey(includeIfNull: false)
  CommerceActivity? add;
  @JsonKey(includeIfNull: false)
  CommerceActivity? remove;
  @JsonKey(includeIfNull: false)
  CommerceActivity? detail;

  Ecommerce({
    this.purchase,
    this.add,
    this.remove,
    this.detail,
  });

  Ecommerce.fromJson(Map<String, dynamic> json) {
    purchase = json['purchase'] != null
        ? CommerceActivity.fromJson(json['purchase'])
        : null;
    add = json['add'] != null ? CommerceActivity.fromJson(json['add']) : null;
    remove = json['remove'] != null
        ? CommerceActivity.fromJson(json['remove'])
        : null;
    detail = json['detail'] != null
        ? CommerceActivity.fromJson(json['detail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (purchase != null) {
      data['purchase'] = purchase?.toJson();
    }
    if (add != null) {
      data['add'] = add?.toJson();
    }
    if (remove != null) {
      data['remove'] = remove?.toJson();
    }
    if (detail != null) {
      data['detail'] = detail?.toJson();
    }
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class CommerceActivity {
  @JsonKey(includeIfNull: false)
  ActionField? actionField;
  @JsonKey(includeIfNull: false)
  List<Products>? products;

  CommerceActivity({this.actionField, this.products});

  CommerceActivity.fromJson(Map<String, dynamic> json) {
    actionField = json['actionField'] != null
        ? ActionField.fromJson(json['actionField'])
        : null;
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (actionField != null) {
      data['actionField'] = actionField?.toJson();
    }
    if (products != null) {
      data['products'] = products?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class ActionField {
  @JsonKey(includeIfNull: false)
  String? id;
  @JsonKey(includeIfNull: false)
  String? coupon;
  @JsonKey(includeIfNull: false)
  int? goalId;
  @JsonKey(includeIfNull: false)
  int? revenue;

  ActionField({this.id, this.coupon, this.goalId, this.revenue});

  ActionField.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    coupon = json['coupon'];
    goalId = json['goal_id'];
    revenue = json['revenue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['coupon'] = coupon;
    data['goal_id'] = goalId;
    data['revenue'] = revenue;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Products {
  @JsonKey(includeIfNull: false)
  String? id;
  @JsonKey(includeIfNull: false)
  String? name;
  @JsonKey(includeIfNull: false)
  double? price;
  @JsonKey(includeIfNull: false)
  String? brand;
  @JsonKey(includeIfNull: false)
  String? category;
  @JsonKey(includeIfNull: false)
  String? variant;
  @JsonKey(includeIfNull: false)
  String? coupon;
  @JsonKey(includeIfNull: false)
  int? quantity;
  @JsonKey(includeIfNull: false)
  int? position;

  Products(
      {this.id,
      this.name,
      this.price,
      this.brand,
      this.category,
      this.variant,
      this.coupon,
      this.quantity,
      this.position});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    brand = json['brand'];
    category = json['category'];
    variant = json['variant'];
    coupon = json['coupon'];
    quantity = json['quantity'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['brand'] = brand;
    data['category'] = category;
    data['variant'] = variant;
    data['coupon'] = coupon;
    data['quantity'] = quantity;
    data['position'] = position;
    return data;
  }
}
