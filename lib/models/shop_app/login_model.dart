class ShopLoginModel
{
  bool? status;
  String? message;
  UserData? data;

   ShopLoginModel.fromJson(Map<String, dynamic> json)
   {
     status = json['status'];
     message = json['message']!;
     //       data = UserData.fromJson(json['data']); --> try if there are errors with null safety
     //       data = UserData.fromJson(json['data']!);
     data = json['data'] != null? UserData.fromJson(json['data']): null;
   }

}


class UserData
{
  late int id;
  late String email;
  late String phone;
  late String image;
  late int points;
  late int credit;
  late String token;

//   UserData({
//     required this.id,
//     required this.email,
//     required this.image,
//     required this.phone,
//     required this.points,
//     required this.credit,
//     required this.token,
// });

  //named constructor

  UserData.fromJson(Map<String, dynamic> json)
  {
      id = json['id'];
      email = json['email'];
      image = json['image'];
      phone = json['phone'];
      points = json['points'];
      credit = json['credit'];
      token = json['token'];
  }
}