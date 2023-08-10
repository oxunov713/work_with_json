class Products {
  int? id;
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List? images;

  Products({
    this.id,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    this.images,
  });

  factory Products.fromJson(Map<String, Object?> json) => Products(
        id: json['id'] as int?,
        title: json['title'] as String?,
        description: json['description'] as String?,
        price: json['price'] as int?,
        discountPercentage: json['discountPercentage'] as double?,
        rating: json['rating'] as double?,
        stock: json['stock'] as int?,
        brand: json['brand'] as String?,
        category: json['category'] as String?,
        thumbnail: json['thumbnail'] as String?,
        images: json['images'] as List?,
      );

  @override
  String toString() =>
      "Products(id: $id title: $title description: $description price: $price discountPercentage: $discountPercentage rating: $rating stock: $stock brand: $brand category: $category thumbnail: $thumbnail images: $images)";
}
