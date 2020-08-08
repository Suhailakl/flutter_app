import 'package:flutter/cupertino.dart';
import 'package:flutter_app/models/services_model.dart';
import 'package:flutter_app/widgets/home/home_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalProducts extends StatelessWidget{
  final List<PetServices> liServices;

  HorizontalProducts(this.liServices);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(70),),
        scrollDirection: Axis.horizontal,
        itemCount:liServices.length,
        itemBuilder: (context,index){
         return Row(
           children: <Widget>[
             HomeCard(liServices[index]),
             SizedBox(width: ScreenUtil().setWidth(90),)
           ],
         );
        });
    throw UnimplementedError();
  }

}