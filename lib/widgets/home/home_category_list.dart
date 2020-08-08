import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app/models/category_model.dart';
import 'package:flutter_app/models/services_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_header.dart';
import 'horizontal_product_list.dart';

class HomeCategoryList extends StatefulWidget{
  @override
  _HomeCategoryListState createState() => _HomeCategoryListState();
}

class _HomeCategoryListState extends State<HomeCategoryList> {
  List<CategoryServices> liCat=[];
  List<PetServices> liServices=[];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return ListView.builder(
      itemCount: liCat.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context,index){
        List<PetServices> liPet=liServices.where((element) => element.catId==liCat[index].id).toList();
      return Column(
        children: <Widget>[
          SizedBox(height: ScreenUtil().setHeight(100),),
          Padding(
            padding: EdgeInsets.only(left: ScreenUtil().setWidth(70)),
            child: HomeHeader(liCat[index]),
          ),
          SizedBox(height: ScreenUtil().setHeight(30),),
          Container(
            height: ScreenUtil().setHeight(800),
              child: HorizontalProducts(liPet))
        ],
      );
      },
    );
    throw UnimplementedError();
  }

  @override
  void initState() {
    initData();
    super.initState();
  }
  void initData(){
    liCat.add(CategoryServices(title: "WALK GROUPS",id: 1));
    liCat.add(CategoryServices(title: "NEW PRODUCTS",id: 2));
    liCat.add(CategoryServices(title: "SPECIAL PRODUCTS",id: 3));
    liCat.add(CategoryServices(title: "TRENDING PRODUCTS",id: 4));
    liServices=[
      PetServices(
        id: 1,
          catId: 1,
        image: "assets/images/home_dog_images/dog1.jpeg",
        title: "Meet our lovely dogs",
        location: "Valencia, Spain",
        members: 8,
        organiser: "Laura"
      ),
        PetServices(
            id: 1,
            catId: 1,
            image: "assets/images/home_dog_images/dog2.jpg",
            title: "Meet our lovely dogs",
            location: "Valencia, Spain",
            members: 8,
            organiser: "Laura"
        ),
        PetServices(
            id: 1,
            catId: 1,
            image: "assets/images/home_dog_images/dog5.jpg",
            title: "Meet our lovely dogs",
            location: "Valencia, Spain",
            members: 8,
            organiser: "Laura"
        ),
      PetServices(
          id: 1,
          catId: 2,
          title: "Meet our lovely dogs",
          image: "assets/images/home_dog_images/dog3.jpg",
          location: "Valencia, Spain",
          members: 8,
          organiser: "Laura"
      ),
      PetServices(
          id: 1,
          catId: 2,
          image: "assets/images/home_dog_images/dog4.jpg",
          title: "Meet our lovely dogs",
          location: "Valencia, Spain",
          members: 8,
          organiser: "Laura"
      ),
      PetServices(
          id: 1,
          catId: 2,
          image: "assets/images/home_dog_images/dog6.jpg",
          title: "Meet our lovely dogs",
          location: "Valencia, Spain",
          members: 8,
          organiser: "Laura"
      ),
      PetServices(
          id: 1,
          catId: 3,
          image: "assets/images/home_dog_images/dog1.jpeg",
          title: "Meet our lovely dogs",
          location: "Valencia, Spain",
          members: 8,
          organiser: "Laura"
      ),
      PetServices(
          id: 1,
          catId: 3,
          image: "assets/images/home_dog_images/dog2.jpg",
          title: "Meet our lovely dogs",
          location: "Valencia, Spain",
          members: 8,
          organiser: "Laura"
      ),
      PetServices(
          id: 1,
          catId: 3,
          image: "assets/images/home_dog_images/dog5.jpg",
          title: "Meet our lovely dogs",
          location: "Valencia, Spain",
          members: 8,
          organiser: "Laura"
      ),
      PetServices(
          id: 1,
          catId:4,
          title: "Meet our lovely dogs",
          image: "assets/images/home_dog_images/dog3.jpg",
          location: "Valencia, Spain",
          members: 8,
          organiser: "Laura"
      ),
      PetServices(
          id: 1,
          catId:4,
          image: "assets/images/home_dog_images/dog4.jpg",
          title: "Meet our lovely dogs",
          location: "Valencia, Spain",
          members: 8,
          organiser: "Laura"
      ),
      PetServices(
          id: 1,
          catId:4,
          image: "assets/images/home_dog_images/dog6.jpg",
          title: "Meet our lovely dogs",
          location: "Valencia, Spain",
          members: 8,
          organiser: "Laura"
      ),
      
    ];
  }
}