import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/common/strings.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'colors.dart';

class CustomTextStyles{
  TextStyle homeHeadTextStyle=TextStyle(
      color:CustomColors.textBlackColor,
      fontFamily: S.ambitFont,
      fontSize: ScreenUtil().setSp( 80,allowFontScalingSelf: false),
      fontWeight: FontWeight.w700
  );
  TextStyle searchHeadTextStyle=TextStyle(
      color:CustomColors.textBlackColor,
      fontFamily: S.ambitFont,
      letterSpacing: 0.68,
      wordSpacing: 2,
      fontSize: ScreenUtil().setSp( 75,allowFontScalingSelf: false),
      fontWeight: FontWeight.w700
  );
  TextStyle homeCardTitleTextStyle=TextStyle(
      color:CustomColors.textBlackColor,
      fontFamily: S.ambitFont,
      fontSize: ScreenUtil().setSp( 60,allowFontScalingSelf: false),
      fontWeight: FontWeight.w700
  );
  TextStyle homeHeaderTextStyle=TextStyle(
      color:CustomColors.textBlackColor,
      fontFamily: S.ambitFont,
      fontSize: ScreenUtil().setSp( 50,allowFontScalingSelf: false),
      fontWeight: FontWeight.w400
  );
  TextStyle homeCardDetStyle=TextStyle(
      color:CustomColors.homeCardIconColor,
      fontFamily: S.ambitFont,
      fontSize: ScreenUtil().setSp( 45,allowFontScalingSelf: false),
      fontWeight: FontWeight.w400
  );
  TextStyle homeCardDetOrgStyle=TextStyle(
      color:CustomColors.notBgColor,
      fontFamily: S.ambitFont,
      fontSize: ScreenUtil().setSp( 45,allowFontScalingSelf: false),
      fontWeight: FontWeight.w400
  );
  TextStyle notHomeTextStyle=TextStyle(
      color:CustomColors.whiteColor,
      fontFamily: S.ambitFont,
      fontSize: ScreenUtil().setSp( 45,allowFontScalingSelf: false),
      fontWeight: FontWeight.w500
  );
  TextStyle searchTitleStyle=TextStyle(
      color:CustomColors.whiteColor,
      fontFamily: S.ambitFont,
      fontSize: ScreenUtil().setSp( 42,allowFontScalingSelf: false),
      fontWeight: FontWeight.w600
  );
  TextStyle homeSubHeadTextStyle=TextStyle(
      color:CustomColors.textBlackColor,
      fontFamily: S.ambitFont,
      fontSize: ScreenUtil().setSp( 40,allowFontScalingSelf: false),
      fontWeight: FontWeight.w400
  );

}
class ContainerDecoration{
  static Decoration bgDecoration=BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: CustomColors.bgColor.withOpacity(1),
        blurRadius: 25.0, // soften the shadow
        spreadRadius: 5.0, //extend the shadow
        offset: Offset(
          15.0, // Move to right 10  horizontally
          15.0, // Move to bottom 10 Vertically
        ),
      )
    ],
  );

}