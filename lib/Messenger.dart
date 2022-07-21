import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color:Colors.black,

              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 15.0,
            child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.camera_alt,
                  size:16.0,
                  color:Colors.white
                )
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 15.0,
            child: IconButton(
                onPressed: (){},
                icon: Icon(
                    Icons.edit,
                    size:16.0,
                    color:Colors.white
                )
            ),
          ),
          SizedBox(
            width: 3.0,
          ),
        ],
      ),
      body:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5.0
                  ),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                        Icons.search
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Search'
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 30.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ahmed Mohamed Sanad',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ahmed Mohamed Sanad',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ahmed Mohamed Sanad',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ahmed Mohamed Sanad',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ahmed Mohamed Sanad',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ahmed Mohamed Sanad',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed Mohamed Saeed Mohamed Metwally',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'My Names is Ahmed What about u dear?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Container(
                            height: 7.0,
                            width: 7.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle
                            ),

                          ),
                        ),
                        Text(
                          '02:00 pm'
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed Mohamed Saeed Mohamed Metwally',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'My Names is Ahmed What about u dear?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Container(
                            height: 7.0,
                            width: 7.0,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle
                            ),

                          ),
                        ),
                        Text(
                            '02:00 pm'
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed Mohamed Saeed Mohamed Metwally',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'My Names is Ahmed What about u dear?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Container(
                            height: 7.0,
                            width: 7.0,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle
                            ),

                          ),
                        ),
                        Text(
                            '02:00 pm'
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed Mohamed Saeed Mohamed Metwally',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'My Names is Ahmed What about u dear?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Container(
                            height: 7.0,
                            width: 7.0,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle
                            ),

                          ),
                        ),
                        Text(
                            '02:00 pm'
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed Mohamed Saeed Mohamed Metwally',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'My Names is Ahmed What about u dear?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Container(
                            height: 7.0,
                            width: 7.0,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle
                            ),

                          ),
                        ),
                        Text(
                            '02:00 pm'
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed Mohamed Saeed Mohamed Metwally',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'My Names is Ahmed What about u dear?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Container(
                            height: 7.0,
                            width: 7.0,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle
                            ),

                          ),
                        ),
                        Text(
                            '02:00 pm'
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed Mohamed Saeed Mohamed Metwally',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'My Names is Ahmed What about u dear?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Container(
                            height: 7.0,
                            width: 7.0,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle
                            ),

                          ),
                        ),
                        Text(
                            '02:00 pm'
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX-zqjuv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_SOwH1OyK5pz4OZQqkmTx79Fw_aI0Ge8NM4rD3WB7FFQ&oe=62D52886'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed Mohamed Saeed Mohamed Metwally',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'My Names is Ahmed What about u dear?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Container(
                            height: 7.0,
                            width: 7.0,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle
                            ),

                          ),
                        ),
                        Text(
                            '02:00 pm'
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}
