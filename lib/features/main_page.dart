import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:template_app/features.dart';
import 'package:template_app/features/bag_page.dart';
import 'package:template_app/features/favorites_page.dart';
import 'package:template_app/features/profile_page.dart';
import 'package:template_app/features/shop_page.dart';
import 'package:template_app/theme/app_icons.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentIndex
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: <Widget>[
          HomePage(),
          ShopPage(),
          BagPage(),
          FavoritesPage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: kElevationToShadow[6]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _pageController.jumpToPage(index);
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.homeInactive,
                    color: _currentIndex == 0 ? Theme.of(context).primaryColor : Theme.of(context).hintColor,),
                  title: Text('Home')
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.shop,
                    color: _currentIndex == 1 ? Theme.of(context).primaryColor : Theme.of(context).hintColor,),
                  title: Text('Shop')
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.bag,
                    color: _currentIndex == 2 ? Theme.of(context).primaryColor : Theme.of(context).hintColor,),
                  title: Text('Bag')
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.favorite,
                    color: _currentIndex == 3 ? Theme.of(context).primaryColor : Theme.of(context).hintColor,),
                  title: Text('Favorite')
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.profile,
                    color: _currentIndex == 4 ? Theme.of(context).primaryColor : Theme.of(context).hintColor,),
                  title: Text('Profile')
              )
            ],
            currentIndex: _currentIndex,
            backgroundColor: Colors.white,
            fixedColor: Colors.red,
            selectedLabelStyle: Theme.of(context).textTheme.caption.copyWith(
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: Theme.of(context).textTheme.caption.copyWith(
              fontWeight: FontWeight.w300,
            ),
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
