class ProductResponse {
  String? id;
  String? productName;
  String? image;
  String? price;

  ProductResponse({this.id, this.productName, this.image, this.price});

  ProductResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['product_name'];
    image = json['image'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_name'] = this.productName;
    data['image'] = this.image;
    data['price'] = this.price;
    return data;
  }
}