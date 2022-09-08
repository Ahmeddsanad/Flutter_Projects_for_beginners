import 'package:flutter/material.dart';
import 'package:project1/modules/shop_app/login/shop_login_screen.dart';
import 'package:project1/shared/component/components.dart';
import 'package:project1/shared/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

  class BoardingModel
  {
    final String image;
    final String title;
    final String body;

    BoardingModel({
      required this.image,
      required this.body,
      required this.title
    });
  }




class OnBoardingScreen extends StatefulWidget
{
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding =
  [
    BoardingModel(
        image: 'assets/images/onboard_1.jpg',
        body: 'On Board 1 Body',
        title: 'on Board 1 title'
    ),
    BoardingModel(
        image: 'assets/images/onboard_1.jpg',
        body: 'On Board 2 Body',
        title: 'on Board 2 title'
    ),
    BoardingModel(
        image: 'assets/images/onboard_1.jpg',
        body: 'On Board 3 Body',
        title: 'on Board 3 title'
    ),
  ];

  bool isLast = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          DefaultTextButton(
              function: ()
              {
                  NavigateAndFinish(context,ShopLoginScreen(),);
              },
              text: 'SKIP',
              textStyle: TextStyle(
                color: Colors.teal,
              )
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  itemBuilder: (context, index) => BuildBoardingItem(boarding[index]),
                  itemCount: boarding.length,
                  controller: boardController,
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (int index)
                  {
                    if(index == boarding.length - 1){
                      setState(() {
                        isLast = true;
                      });
                      print('last');
                    }
                    else{
                      setState(() {
                        isLast = false;
                      });
                      print('not last');
                    }
                  },
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                /*Text(
                  'Indicator'
                ),*/
                SmoothPageIndicator(
                    controller: boardController,
                    count: boarding.length,
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      dotHeight: 10.0,
                      expansionFactor: 4,
                      dotWidth: 10.0,
                      spacing: 5,
                      activeDotColor: defaultColor,
                    ),
                ),
                Spacer(),
                FloatingActionButton(
                    onPressed: ()
                    {
                      if(isLast)
                      {
                        NavigateAndFinish(context,ShopLoginScreen(),);
                      }
                      else
                      {
                        boardController.nextPage
                          (
                            duration: Duration(
                                seconds: 2
                            ),
                            curve: Curves.fastLinearToSlowEaseIn
                        );
                      }
                    },
                  child: Icon(Icons.arrow_forward_ios),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}



Widget BuildBoardingItem(BoardingModel model) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children:
  [
    Expanded(
      child: Image(
        image: AssetImage('${model.image}'),
      ),
    ),
    // SizedBox(
    //   height: 30.0,
    // ),
    Text(
      '${model.title}',
      style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold
      ),
    ),
    SizedBox(
      height: 15.0,
    ),
    Text(
      '${model.body}',
      style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold
      ),
    ),
    SizedBox(
      height: 15.0,
    ),
  ],
);