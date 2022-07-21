import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UsersModel{
  final int id ;
  final String name ;
  final String phone ;

  UsersModel({
      required this.id,
      required this.name,
      required this.phone
});
}


class Users_Screen extends StatelessWidget {
  List<UsersModel> users =[
    UsersModel(
        id:1,
        name:'Ahmed Sanad',
        phone: '+201007333728',
        ),
    UsersModel(
      id:2,
      name:'Mohamed Sanad',
      phone: '+201013003833',
    ),
    UsersModel(
      id:3,
      name:'Samir Sanad',
      phone: '+201018189500',
    ),
    UsersModel(
      id:4,
      name:'Ahmed Sanad',
      phone: '+201007333728',
    ),
    UsersModel(
      id:5,
      name:'Mohamed Sanad',
      phone: '+201013003833',
    ),
    UsersModel(
      id:6,
      name:'Samir Sanad',
      phone: '+201018189500',
    ),
    UsersModel(
      id:7,
      name:'Ahmed Sanad',
      phone: '+201007333728',
    ),
    UsersModel(
      id:8,
      name:'Mohamed Sanad',
      phone: '+201013003833',
    ),
    UsersModel(
      id:9,
      name:'Samir Sanad',
      phone: '+201018189500',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'Users',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => BuildUsersItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start:20.0,
            ),
            child: Container(
              height: 1.0,
              width: double.infinity,
              color:Colors.grey,
            ),
          ),
          itemCount: users.length,
      )
    );
  }
}

Widget BuildUsersItem(UsersModel users) => Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(
          '${users.id}',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      SizedBox(
        width:10.0,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${users.name}',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            ),
          ),
          Text(
            '${users.phone}',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0
            ),
          ),
        ],
      )
    ],
  ),
);