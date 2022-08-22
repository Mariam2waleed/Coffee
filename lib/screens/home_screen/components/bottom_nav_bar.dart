// import 'package:coffee_shopp/constants.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:coffee/constants.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kSecondaryColor,
      selectedFontSize: 15,
      unselectedFontSize: 13,
      iconSize: 30,
      elevation: 0.0,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: SvgPicture.asset('assets/images/home.svg'),
        ),
        BottomNavigationBarItem(
          label: "Location",
          icon: SvgPicture.asset('assets/images/location.svg'),
        ),
        BottomNavigationBarItem(
          label: "Cart",
          icon: SvgPicture.asset('assets/images/cart.svg'),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: SvgPicture.asset('assets/images/profile.svg'),
        ),
      ],
    );
  }
}
