class Products {
  int? id;
  String? title;
  int? price;
  double? discountPercentage;
  int? discountPrice;
  int? quantity;
  int? total;

  Products({
    this.id,
    this.title,
    this.price,
    this.discountPercentage,
    this.discountPrice,
    this.quantity,
    this.total,
  });

  factory Products.fromJson(Map<String, Object?> json) => Products(
        id: json['id'] as int?,
        title: json['title'] as String?,
        discountPrice: json["dicountPrice"] as int?,
        price: json['price'] as int?,
        discountPercentage: json['discountPercentage'] as double?,
        quantity: json["quantity"] as int?,
        total: json["total"] as int?,
      );

  @override
  String toString() =>
      "Products(id: $id title: $title  price: $price discountPercentage: $discountPercentage,discountPrice: $discountPrice, quantity: $quantity,total: $total)";
}
