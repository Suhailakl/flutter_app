import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common/colors.dart';
import 'package:flutter_app/common/strings.dart';
import 'package:flutter_app/common/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotifCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Stack(
      children: <Widget>[
        Padding(
          padding:  EdgeInsets.only(top: ScreenUtil().setHeight(22)),
          child: Container(
            width: ScreenUtil().setWidth(950),
            height: ScreenUtil().setHeight(150),
            decoration: BoxDecoration(
                color: CustomColors.notBgColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setSp(50,allowFontScalingSelf: false)))
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: ScreenUtil().setWidth(10)),
          child: Row(
            children: <Widget>[
              Image.asset("assets/images/notif_dog.png",fit:BoxFit.fill,height: ScreenUtil().setHeight(180),width: ScreenUtil().setWidth(240),),
              Container(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(40)),
                width:  ScreenUtil().setWidth(700),
                child: Text(
                    S.notContent,
                  style: CustomTextStyles().notHomeTextStyle,
                ),
              ),
            ],
          ),
        )
      ],

    );
    throw UnimplementedError();
  }

}