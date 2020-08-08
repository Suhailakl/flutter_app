import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common/colors.dart';
import 'package:flutter_app/common/styles.dart';
import 'package:flutter_app/models/services_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCard extends StatelessWidget{
  PetServices dogModel;

  HomeCard(this.dogModel);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
   return Container(
     width: ScreenUtil().setWidth(750),
     decoration: BoxDecoration(
       color: CustomColors.whiteColor,
       shape: BoxShape.rectangle,
       borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setSp(50)))
      ),
     child: Column(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setSp(50)))
            ),
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft:Radius.circular(ScreenUtil().setSp(50)) ,topRight: Radius.circular(ScreenUtil().setSp(50))),
                child: Image.asset(dogModel.image,height: ScreenUtil().setHeight(350),fit: BoxFit.fill,))),
        SizedBox(
          height: ScreenUtil().setHeight(50),
        ),
        Center(
          child: Text(
            dogModel.title,
            style: CustomTextStyles().homeCardTitleTextStyle,
          ),
        ),
        SizedBox(
          height: ScreenUtil().setHeight(50),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(100)),
       child: Column(
         children: <Widget>[
           Row(
             crossAxisAlignment: CrossAxisAlignment.end,
             children: <Widget>[
               Icon(Icons.location_on,color: CustomColors.homeCardIconColor,)
               ,SizedBox(width: ScreenUtil().setWidth(25),) ,
               Text(
                 dogModel.location,
                 style: CustomTextStyles().homeCardDetStyle,
               )
             ],
           ),
           SizedBox(
             height: ScreenUtil().setHeight(25),
           ),
           Row(
             crossAxisAlignment: CrossAxisAlignment.end,
             children: <Widget>[
               Icon(Icons.supervised_user_circle,color: CustomColors.homeCardIconColor,)
               ,SizedBox(width: ScreenUtil().setWidth(25),) ,
               Text(
                 dogModel.members.toString()+" members",
                 style: CustomTextStyles().homeCardDetStyle,
               )
             ],
           ),
           SizedBox(
             height: ScreenUtil().setHeight(25),
           ),
           Row(
             crossAxisAlignment: CrossAxisAlignment.end,
             children: <Widget>[
               Icon(Icons.verified_user,color: CustomColors.homeCardIconColor,)
               ,SizedBox(width: ScreenUtil().setWidth(25),) ,
               Row(
                 children: <Widget>[
                   Text(
                     "Organised by ",
                     style: CustomTextStyles().homeCardDetStyle,
                   ),
                   Text(
                     dogModel.organiser,
                     style: CustomTextStyles().homeCardDetOrgStyle,
                   ),
                 ],
               )
             ],
           )
         ],
       ),
        )
      ],

     ),
   );
    throw UnimplementedError();
  }

}