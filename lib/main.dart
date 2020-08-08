import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/common/colors.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:flutter_app/screens/search.dart';

import 'app.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor:CustomColors.bgColor,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}
