class ProductDataModel {
  String? name;
  String? description;
  num? price;
  String? imageUrl;

  ProductDataModel({
    this.name,
    this.description,
    this.price,
    this.imageUrl,
  });

  factory ProductDataModel.fromMapJson(Map<String, dynamic> map) {
    return ProductDataModel(
      name: map['title'],
      imageUrl: map['image'],
      price: map['price'],
      description: map['description'],
    );
  }
}
