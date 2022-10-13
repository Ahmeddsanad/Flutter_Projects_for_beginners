import 'package:flutter/material.dart';
import 'package:project1/shared/component/components.dart';
import 'package:project1/shared/styles/colors.dart';
import 'package:project1/shared/styles/icon_broken.dart';

class SocialFeeds extends StatelessWidget {
  const SocialFeeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children:
        [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 5.0,
            margin: const EdgeInsets.all(8.0,),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children:
               [
                  const Image(
                  image: NetworkImage('https://img.freepik.com/free-photo/positive-afro-american-lady-shows-something-amazing-points-up-sideways-with-index-fingers-advertises-copy-space-has-toothy-smile-isolated-yellow-background_273609-34317.jpg?w=1060&t=st=1665677956~exp=1665678556~hmac=230133db4ee06355d95b3ed58a505221bdf610b60b529a0ed214a8f10df26ef2'),
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: double.infinity,
                ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                    'Communicate with friends',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Colors.white
                      )
                    ),
                  ),
              ],
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => BuildPostItem(context),
            itemCount: 10,
            separatorBuilder: (context, index) => SizedBox(
              height: 8.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          )
        ],
      ),
    );
  }

  Widget BuildPostItem(context) => Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 5.0,
    margin: const EdgeInsets.symmetric(
        horizontal: 8.0
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children:
            [
              const CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                  'https://64.media.tumblr.com/4e5d91dade3fb33ce4daa014ff5347f3/736d57301357f5f6-27/s400x600/e58bcfc575c77baac611bf04d2d2ce697e8b7d16.jpg',
                ) ,
              ),
              const SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // textBaseline: TextBaseline.alphabetic,
                      children:
                      const
                      [
                        Text(
                          'Ahmed Sanad',
                          style: TextStyle(
                              height: 1.4
                          ),),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.check_circle,
                          color: Colors.blue,
                          size: 16.0,
                        ),
                      ],
                    ),
                    Text(
                      'February 21, 2022 at 11:00 pm',
                      style: Theme.of(context).textTheme.caption?.copyWith(
                        height: 1.4,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.more_horiz,
                  size: 16.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 15.0
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontSize: 12.0
              )
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
              top: 5.0,
            ),
            child: Container(
              width: double.infinity,
              child: Wrap(
                children:
                [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        end: 10.0
                    ),
                    child: Container(
                      child: MaterialButton(
                        height: 25.0,
                        minWidth: 1.0,
                        padding: EdgeInsets.zero,
                        onPressed: (){},
                        child:Text(
                          '#software',
                          style: Theme.of(context).textTheme.caption?.copyWith(
                              color: Colors.blue
                          ),
                        ),
                      ),
                      height: 25.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        end: 10.0
                    ),
                    child: Container(
                      child: MaterialButton(
                        height: 25.0,
                        minWidth: 1.0,
                        padding: EdgeInsets.zero,
                        onPressed: (){},
                        child:Text(
                          '#flutter',
                          style: Theme.of(context).textTheme.caption?.copyWith(
                              color: Colors.blue
                          ),
                        ),
                      ),
                      height: 25.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 140.0,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage('https://img.freepik.com/free-photo/positive-afro-american-lady-shows-something-amazing-points-up-sideways-with-index-fingers-advertises-copy-space-has-toothy-smile-isolated-yellow-background_273609-34317.jpg?w=1060&t=st=1665677956~exp=1665678556~hmac=230133db4ee06355d95b3ed58a505221bdf610b60b529a0ed214a8f10df26ef2'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(
                4.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
            ),
            child: Row(
              children:
              [
                Expanded(
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0
                      ),
                      child: Row(
                        children:
                        [
                          Icon(
                            IconBroken.Heart,
                            size: 14.0,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '214',
                            style: Theme.of(context).textTheme.caption,
                          )
                        ],
                      ),
                    ),
                    onTap: (){},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:
                        [
                          Icon(
                            IconBroken.Chat,
                            size: 14.0,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '214',
                            style: Theme.of(context).textTheme.caption,
                          )
                        ],
                      ),
                    ),
                    onTap: (){},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 10.0
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: Row(
                    children:
                    [
                      const CircleAvatar(
                        radius: 18.0,
                        backgroundImage: NetworkImage(
                          'https://64.media.tumblr.com/4e5d91dade3fb33ce4daa014ff5347f3/736d57301357f5f6-27/s400x600/e58bcfc575c77baac611bf04d2d2ce697e8b7d16.jpg',
                        ) ,
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'write a comment',
                        style: Theme.of(context).textTheme.caption?.copyWith(),
                      ),
                    ],
                  ),
                  onTap: (){},
                ),
              ),
              InkWell(
                child: Row(
                  children:
                  [
                    Icon(
                      IconBroken.Heart,
                      size: 14.0,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Like',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
                onTap: (){},
              ),
            ],
          )
        ],
      ),
    ),
  );
}
