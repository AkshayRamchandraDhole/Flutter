class ProductModel{
  String? productImage;
  String? productName;
  String? price;
  bool? isFavorite = false;
  int? quantity = 0;

  ProductModel({
    this.productImage,
    this.productName,
    this.price,
    this.isFavorite,
    this.quantity
  });
}