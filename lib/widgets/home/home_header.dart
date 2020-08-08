import 'package:flutter/cupertino.dart';
import 'package:flutter_app/common/styles.dart';
import 'package:flutter_app/models/category_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeader extends StatelessWidget{
  final CategoryServices cat;

  HomeHeader(this.cat);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Row(
      children: <Widget>[
        Text(
          cat.title,
          style: CustomTextStyles().homeHeaderTextStyle,
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child:Padding(
              padding:  EdgeInsets.only(right: ScreenUtil().setWidth(20)),
              child: Text(
                "See All",
                style: CustomTextStyles().homeHeaderTextStyle,
              ),
            ) ,
          ),
        )
      ],
    );
    throw UnimplementedError();
  }

}