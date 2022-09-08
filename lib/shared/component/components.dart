import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:project1/shared/cubit/cubit.dart';

import '../../modules/news_app/web_view/webview_screen.dart';

// ignore: non_constant_identifier_names
Widget DefaultButton(
        {double width = double.infinity,
        Color background = Colors.blue,
        bool isUpperCase = true,
        double radius = 3.0,
        required Function function,
        required String text,
        bool isboxdecorated = true,
        BoxDecoration? Decorated
        }) =>
    Container(
      height: 50.0,
      width: width,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(fontSize: 15.0, color: Colors.white),
        ),
      ),
      decoration: isboxdecorated ? BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: background) : Decorated,
    );

Widget DefaultTextButton({
  required String text,
  //required Function function,
  required VoidCallback? function,
  TextStyle? textStyle
}) => TextButton(
    onPressed: (){
      return function!();
    },
    child: Text(
      text.toUpperCase(),
      style: textStyle,
      //------------->
      // validator: (vale) {
      //   return validated(vale);
      // },
      //testing one (don't use it)
    )
);


Widget DefaultFormField({
  required TextEditingController Controller,
  required TextInputType type,
  required Function validated,
  required String label,
  required IconData prefix,
  IconData? Suffix,
  Function? suffixPressed,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  bool isBorder = true,
  InputBorder? Border
}) =>
    TextFormField(
      controller: Controller,
      keyboardType: type,
      //if u find any errors change between them onFieldSubmitted
      // onFieldSubmitted: onSubmit != null ? onSubmit() : null,
      //if u find any errors change between them onChanged
      //onChanged: onChange != null ? onChange() : null, --> in todo app
      // onChanged: (value){
      //   return onChange!(value);
      // },
      onFieldSubmitted: (value){
        return onSubmit!(value);
      },
      onChanged: onChange != null ? onChange() : null,
      onTap: onTap != null ? () => onTap() : null,
      validator: (vale) {
        return validated(vale);
      },
      obscureText: isPassword,
      decoration: InputDecoration(
        // hintText: 'Email Address'
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: Suffix != null
            ? IconButton(
                icon: Icon(
                  Suffix,
                ),
                onPressed: () {
                  suffixPressed!();
                },
              )
            : null,
        border: isBorder ? OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)) : Border,
      ),
    );

//onTap != null ? () => onTap() : null,
Widget BuildTaskItem(Map model, context) => Dismissible(
      key: Key(model['id'].toString()),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40.0,
              child: Text(
                //${model['time']}

                '${model['time']}',

                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.white),
              ),
              backgroundColor: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${model['title']}',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${model['date']}',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            IconButton(
                onPressed: () {
                  AppCubit.get(context).updateData(
                    status: 'done',
                    id: model['id'],
                  );
                },
                icon: Icon(
                  Icons.check_box,
                  color: Colors.green,
                )),
            IconButton(
                onPressed: () {
                  AppCubit.get(context).updateData(
                    status: 'archived',
                    id: model['id'],
                  );
                },
                icon: Icon(
                  Icons.archive,
                  color: Colors.black45,
                )),
          ],
        ),
      ),
      onDismissed: (direction) {
        AppCubit.get(context).DeleteData(
          id: model['id'],
        );
      },
    );

Widget TasksBuilder({
  required List<Map> tasks,
}) =>
    ConditionalBuilder(
      condition: tasks.isNotEmpty,
      builder: (context) => ListView.separated(
        itemBuilder: (context, index) => BuildTaskItem(tasks[index], context),
        separatorBuilder: (context, index) => MyDivider(),
        itemCount: tasks.length,
      ),
      fallback: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.menu,
              size: 100.0,
              color: Colors.grey,
            ),
            Text(
              'No Tasks Yet',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );

Widget MyDivider() => Container(
  width: double.infinity,
  height: 1.0,
  color: Colors.grey[300],
);

// ignore: non_constant_identifier_names
Widget BuildArticleItem(articles ,context) => InkWell(
  onTap: (){
    NavigateTo(context, WebViewScreen(articles['url']),);
  },
  child:Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: NetworkImage(
                    '${articles['urlToImage']}',
                  ),
                  fit: BoxFit.cover
              )
          ),
        ),
        SizedBox(
          width: 15.0,
          // width: 30.0
        ),
        Expanded(
          child: Container(
            height: 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Text(
                    '${articles['title']}',
                    style: Theme.of(context).textTheme.bodyText1,
                    //TextStyle(
                    //                       fontWeight: FontWeight.w600,
                    //                       fontSize: 18.0
                    //                   )
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '${articles['publishedAt']}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 14.0
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
);

// ignore: non_constant_identifier_names
Widget BuildArticle(list, context, {isSearch = false}) => ConditionalBuilder(
    condition: list.isNotEmpty,
    builder: (context) => ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => BuildArticleItem(list[index],context),
      separatorBuilder: (context,index) => MyDivider(),
      itemCount: 10,
    ),
    fallback: (context) => isSearch ? Container() : const Center(child: CircularProgressIndicator())
);

// ignore: non_constant_identifier_names
void NavigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget
    ),
);

// ignore: non_constant_identifier_names, avoid_types_as_parameter_names
void NavigateAndFinish(context,widget) => Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(
        builder: (context) => widget
        ),
        (route) => false
);



//Component file
