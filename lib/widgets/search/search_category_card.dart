import 'package:flutter/cupertino.dart';
import 'package:flutter_app/common/colors.dart';
import 'package:flutter_app/common/styles.dart';
import 'package:flutter_app/models/search_category_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCategoryCard extends StatelessWidget{
  final SearchCatModel searchModel;

  SearchCategoryCard({this.searchModel});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Stack(
      children: <Widget>[
        Padding(
          padding:  EdgeInsets.only(top: ScreenUtil().setHeight(105)),
          child: Container(
            width: ScreenUtil().setWidth(600) ,
            height: ScreenUtil().setHeight(220),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: ScreenUtil().setWidth(205),
                child: Padding(
                  padding:  EdgeInsets.only(left: ScreenUtil().setWidth(30)),
                  child: Text(
                  searchModel.title,
                  maxLines: 2,
                  style: CustomTextStyles().searchTitleStyle,
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: searchModel.clr,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setSp(20,allowFontScalingSelf: false)))
            ),
          ),
        ),
        SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
           child: Row(
            children: <Widget>[
              SizedBox(width: ScreenUtil().setWidth(120), ),
              Image.asset(searchModel.image,fit:BoxFit.fill,height: ScreenUtil().setHeight(350),width: ScreenUtil().setWidth(380),),
            ],
          ),
        )
      ],

    );
    throw UnimplementedError();
  }

}