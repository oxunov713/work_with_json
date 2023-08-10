import 'products.dart';

class Model {
  List<Products> products;
  int? skip;
  int? total;
  int? limit;

  Model({
    this.limit,
    required this.products,
    this.skip,
    this.total,
  });

  factory Model.fromJson(Map<String, Object?> json) => Model(
        limit: json["limit"] as int?,
        products: (json["products"] as List?)
                ?.map((e) => Products.fromJson(e))
                .toList() ??
            [],
        skip: json["skip"] as int?,
        total: json["total"] as int?,
      );

  @override
  String toString() =>
      " Model(products: $products, limit: $limit, skip: $skip, total: $total)";
}
