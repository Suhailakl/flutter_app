import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common/colors.dart';
import 'package:flutter_app/common/strings.dart';
import 'package:flutter_app/common/styles.dart';
import 'package:flutter_app/widgets/search/search_category_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: CustomColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          SizedBox(height: ScreenUtil().setHeight(170),),
          Center(
            child: Text(
              S.searchHeadP1,
              textAlign: TextAlign.center,
              style: CustomTextStyles().searchHeadTextStyle,
            ),
          ),
          Center(
            child: Text(
              S.searchHeadP2,
              textAlign: TextAlign.center,
              style: CustomTextStyles().searchHeadTextStyle,
            ),
          ),
          SearchCategoryList(),
          SizedBox(height: ScreenUtil().setHeight(100),),

        ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}