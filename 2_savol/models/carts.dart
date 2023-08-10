import 'products.dart';

class Carts {
  int? id;
  int? total;
  int? discountedTotal;
  int? userId;
  int? totalProducts;
  int? totalQuantity;
  List<Products> products;

  Carts({
    this.total,
    this.discountedTotal,
    this.userId,
    this.totalProducts,
    this.totalQuantity,
    this.id,
    required this.products,
  });

  factory Carts.fromJson(Map<String, Object?> json) => Carts(
        total: json["total"] as int?,
        discountedTotal: json["discountedTotal"] as int?,
        userId: json["userId"] as int?,
        totalProducts: json["totalProducts"] as int?,
        totalQuantity: json["totalQuantity"] as int?,
        products: (json["products"] as List?)
                ?.map((e) => Products.fromJson(e))
                .toList() ??
            [],
      );
}
