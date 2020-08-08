import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/common/colors.dart';
import 'package:flutter_app/common/strings.dart';
import 'package:flutter_app/common/styles.dart';
import 'package:flutter_app/widgets/home/home_category_list.dart';
import 'package:flutter_app/widgets/notif_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: Container(
        decoration: ContainerDecoration.bgDecoration,
        child: ListView(
          children: <Widget>[
            SizedBox(height: ScreenUtil().setHeight(150),),
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(70)),
              child: Text(
                S.homeHead,
                style: CustomTextStyles().homeHeadTextStyle,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(5),),
            Container(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(70)),
              width: ScreenUtil().setWidth(100),
              child: Text(
                S.homeSubHead,
                style: CustomTextStyles().homeSubHeadTextStyle,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(100),),
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(70)),
              child: NotifCard(),
            ),
            SizedBox(height: ScreenUtil().setHeight(50),),
            HomeCategoryList(),
            SizedBox(height: ScreenUtil().setHeight(100),),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}