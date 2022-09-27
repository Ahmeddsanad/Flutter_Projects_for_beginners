// ignore_for_file: non_constant_identifier_names

class HomeModel
{
   bool? status;
   HomeDataModel? data;

  HomeModel.fromJson(Map<String, dynamic> json)
  {
    status = json['status'];
    // data = json['data'] != null ? HomeDataModel.fromJson(json['data']) : null;
    //data = json['data'] != null? UserData.fromJson(json['data']): null;
    data = HomeDataModel.fromJson(json['data']);
  }
}


class HomeDataModel
{
   List<ProductsModel> products = [];
   List<BannerModel> banners = [];


    HomeDataModel.fromJson(Map<String, dynamic> json)
    {
      json['banners'].forEach((element) {
        banners.add(BannerModel.fromJson(element));
      }
      );

      json['products'].forEach((element){
        products.add(ProductsModel.fromJson(element));
      });
    }

}


class BannerModel
{
  late int id ;
  late String image;
  late dynamic category;
  late dynamic product;


  BannerModel.fromJson(Map<String, dynamic> json)
  {
    id = json['id'];
    image = json['image'];
    category = json['category'];
    product = json['product'];
  }
}

class ProductsModel{
  late int id;
  late dynamic price;
  late dynamic OldPrice;
  late dynamic discount;
  late String image;
  late String name;
  late bool inFavorites;
  late bool inCart;

  ProductsModel.fromJson(Map<String, dynamic>json)
  {
    id = json['id'];
    price = json['price'];
    OldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
    inFavorites = json['in_favorites']!;
    inCart = json['in_cart'];
  }
}