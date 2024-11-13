class ProductModel {
  late int id;
  late String name;
  late String description;
  late String image;
  late double price;
  late bool isFav;
  late bool isInCart;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    this.isFav = false,
    this.isInCart = false,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'image': image,
        'price': price,
        'isFav': isFav,
        'isInCart': isInCart,
      };

  @override
  String toString() {
    return '{id: $id, name: $name, isFav: $isFav, isInCart: $isInCart}';
  }
}
