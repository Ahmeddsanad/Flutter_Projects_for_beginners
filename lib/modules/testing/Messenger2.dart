import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messenger2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color : Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: (){

                  },
                  icon: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.camera_alt
                    ),
                  )),
              IconButton(
                  onPressed: (){

                  },
                  icon: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                        Icons.edit
                    ),
                  )),
            ],
          ),
        ],
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(
                    5.0
                ),
                color: Colors.grey[400]
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search
                  ),
                  Text(
                    'Search',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed Saeed Mohamed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'How Are u?will u come with us?and u will come with ur bro?',
                                      overflow: TextOverflow.ellipsis
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width:1.0
                                ),
                                Text(
                                  '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed Saeed Mohamed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'How Are u?will u come with us?and u will come with ur bro?',
                                      overflow: TextOverflow.ellipsis
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                    width:1.0
                                ),
                                Text(
                                    '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed Saeed Mohamed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'How Are u?will u come with us?and u will come with ur bro?',
                                      overflow: TextOverflow.ellipsis
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                    width:1.0
                                ),
                                Text(
                                    '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed Saeed Mohamed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'How Are u?will u come with us?and u will come with ur bro?',
                                      overflow: TextOverflow.ellipsis
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                    width:1.0
                                ),
                                Text(
                                    '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed Saeed Mohamed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'How Are u?will u come with us?and u will come with ur bro?',
                                      overflow: TextOverflow.ellipsis
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                    width:1.0
                                ),
                                Text(
                                    '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed Saeed Mohamed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'How Are u?will u come with us?and u will come with ur bro?',
                                      overflow: TextOverflow.ellipsis
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                    width:1.0
                                ),
                                Text(
                                    '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed Saeed Mohamed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'How Are u?will u come with us?and u will come with ur bro?',
                                      overflow: TextOverflow.ellipsis
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                    width:1.0
                                ),
                                Text(
                                    '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed Saeed Mohamed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'How Are u?will u come with us?and u will come with ur bro?',
                                      overflow: TextOverflow.ellipsis
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                    width:1.0
                                ),
                                Text(
                                    '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed Saeed Mohamed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'How Are u?will u come with us?and u will come with ur bro?',
                                      overflow: TextOverflow.ellipsis
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                    width:1.0
                                ),
                                Text(
                                    '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed Saeed Mohamed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'How Are u?will u come with us?and u will come with ur bro?',
                                      overflow: TextOverflow.ellipsis
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                    width:1.0
                                ),
                                Text(
                                    '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/259657156_3127121267614351_685781205823018657_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lnTi6GQJScMAX9PjgM2&_nc_ht=scontent-hbe1-1.xx&oh=00_AT-mkc1Ee3Syz2vFi6SsxGZfX4hXFaKivLo0lqPJnKvFyw&oe=62D722C6'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed Saeed Mohamed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'How Are u?will u come with us?and u will come with ur bro?',
                                      overflow: TextOverflow.ellipsis
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                    width:1.0
                                ),
                                Text(
                                    '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://i2-prod.mirror.co.uk/incoming/article27484771.ece/ALTERNATES/s1200d/0_GettyImages-1241846515.jpg'
                            ),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 7.0,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed Saeed Mohamed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'How Are u?will u come with us?and u will come with ur bro?',
                                      overflow: TextOverflow.ellipsis
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                    width:1.0
                                ),
                                Text(
                                    '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
