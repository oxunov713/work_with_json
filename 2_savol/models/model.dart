import 'carts.dart';

class Model {
  List<Carts> carts;
  int? skip;
  int? total;
  int? limit;

  Model({
    this.limit,
    required this.carts,
    this.skip,
    this.total,
  });

  factory Model.fromJson(Map<String, Object?> json) => Model(
        limit: json["limit"] as int?,
        carts:
            (json["carts"] as List?)?.map((e) => Carts.fromJson(e)).toList() ??
                [],
        skip: json["skip"] as int?,
        total: json["total"] as int?,
      );

  @override
  String toString() =>
      " Model(carts: $carts, limit: $limit, skip: $skip, total: $total)";
}
