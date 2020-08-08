import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/custom_bottom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AppState();
    throw UnimplementedError();
  }

}
class AppState extends State<App>{
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      home: CustomBottomNavBar(),
      debugShowCheckedModeBanner: false,

    );
    throw UnimplementedError();
  }

}