import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common/colors.dart';
import 'package:flutter_app/models/search_category_model.dart';
import 'package:flutter_app/widgets/search/search_category_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCategoryList extends StatefulWidget{
  @override
  _SearchCategoryListState createState() => _SearchCategoryListState();
}

class _SearchCategoryListState extends State<SearchCategoryList> {
List<SearchCatModel> liSearch=[];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return GridView.builder(
      shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(70)),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: ScreenUtil().setWidth(35),
            childAspectRatio: (ScreenUtil.screenWidth/ScreenUtil.screenHeight)*2.3),
         itemCount: liSearch.length,
        itemBuilder:
        (context,index){
          return SearchCategoryCard(searchModel: liSearch[index],);

    });
    throw UnimplementedError();
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }
  void _initData(){
    liSearch=[
      SearchCatModel(
        image:"assets/images/search_cat_images/search1.png" ,
        title: "Vet Clinics",
        clr: CustomColors.cardDarkGreenColor,
      ),
      SearchCatModel(
        image:"assets/images/search_cat_images/search2.png" ,
        title: "Places to eat",
        clr: CustomColors.cardLightGreenColor,
      ),
      SearchCatModel(
        image:"assets/images/search_cat_images/search3.png" ,
        title: "Places to walk",
        clr: CustomColors.cardDarkBlueColor,
      ),
      SearchCatModel(
        image:"assets/images/search_cat_images/search4.png" ,
        title: "Spas & Salons",
        clr: CustomColors.cardLightBlueColor,
      ),
      SearchCatModel(
        image:"assets/images/search_cat_images/search5.png" ,
        title: "Shops & Products",
        clr: CustomColors.cardLightGreenColor,
      ),
      SearchCatModel(
        image:"assets/images/search_cat_images/search6.png" ,
        title: "Walk groups",
        clr: CustomColors.cardDarkGreenColor,
      ),
      SearchCatModel(
        image:"assets/images/search_cat_images/search7.png" ,
        title: "Animals in adoption",
        clr: CustomColors.cardLightBlueColor,
      ),
      SearchCatModel(
        image:"assets/images/search_cat_images/search8.png" ,
        title: "Dogs walkers",
        clr: CustomColors.cardDarkBlueColor,
      ),

    ];
  }
}