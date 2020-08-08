
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/common/colors.dart';
import 'package:flutter_app/common/icons/bottom_icons_icons.dart';
import 'package:flutter_app/common/strings.dart';
import 'package:flutter_app/screens/search.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'home.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  List<PersistentBottomNavBarItem> _navBarsItems=[];
  PersistentTabController _controller;
  double btmItemIconSize,btmItemFontSize;
  List<Widget> _buildScreens=[];
  @override
  void initState() {
    btmItemFontSize=ScreenUtil().setSp(35,allowFontScalingSelf: false);
    _controller = PersistentTabController(initialIndex:0);
    renderTabbar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return PersistentTabView(
      controller: _controller,
      items: _navBarsItems,
      screens: _buildScreens,
      confineInSafeArea: true,
      stateManagement: true,
      handleAndroidBackButtonPress: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      hideNavigationBarWhenKeyboardShows: true,
      backgroundColor: CustomColors.btmBgColor,
      iconSize: ScreenUtil().setSp(60,allowFontScalingSelf: false),
      navBarStyle: NavBarStyle.simple, // Choose the nav bar style with this property
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ), // C
    );




  }
  List<Widget> renderTabbar() {

    List<Widget> list = [];
    int i=0;

      _navBarsItems.add(
        PersistentBottomNavBarItem(
          icon:Icon(BottomIcons.house_black_silhouette_without_door,),
          title: S.home,
          titleFontSize: btmItemFontSize,
          activeColor: CustomColors.notBgColor,
          inactiveColor: CustomColors.unseletcedBtmItemColor,
        ),
      );
    _buildScreens.add(HomeScreen()) ;
    _navBarsItems.add(
      PersistentBottomNavBarItem(
        icon:Padding(
          padding:  EdgeInsets.only(right: ScreenUtil().setSp(20)),
          child: Icon(BottomIcons.design_distribution_of_elements_of_an_article,),
        ),
        title: S.articles,
        titleFontSize: btmItemFontSize,
        activeColor: CustomColors.notBgColor,
        inactiveColor: CustomColors.unseletcedBtmItemColor,
      ),
    );
    _buildScreens.add(HomeScreen()) ;
    _navBarsItems.add(
      PersistentBottomNavBarItem(
        icon:Icon(BottomIcons.search,),
        title: S.search,
        titleFontSize: btmItemFontSize,
        activeColor: CustomColors.notBgColor,
        inactiveColor: CustomColors.unseletcedBtmItemColor,
      ),
    );
    _buildScreens.add(Search()) ;
    _navBarsItems.add(
      PersistentBottomNavBarItem(
       icon: Padding(
         padding:  EdgeInsets.only(left: ScreenUtil().setSp(23)),
         child: Stack(
           children: <Widget>[
             Icon(BottomIcons.notification,),
             Align(
               alignment: Alignment.topLeft,
               child: Container(
                 width: ScreenUtil().setWidth(100),
                 child: CircleAvatar(
                   backgroundColor: Colors.green,
                   radius: ScreenUtil().setSp(15,allowFontScalingSelf: false),
                 ),
               ),
             ),
           ],
           ),
       ),
        titleFontSize: btmItemFontSize,
        title: S.notification,
        activeColor: CustomColors.notBgColor,
        inactiveColor: CustomColors.unseletcedBtmItemColor,
      ),
    );
    _buildScreens.add(HomeScreen()) ;
    _navBarsItems.add(
      PersistentBottomNavBarItem(
        icon:Icon(BottomIcons.pawprint,),
        title: S.profile, titleFontSize: btmItemFontSize,
        activeColor: CustomColors.notBgColor,
        inactiveColor: CustomColors.unseletcedBtmItemColor,
      ),
    );
    _buildScreens.add(HomeScreen()) ;

    return list;
  }
}