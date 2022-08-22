// import 'package:coffee_shop/constants.dart';
// import 'package:coffee_shop/product.dart';
// import 'package:coffee_shop/screens/order_screen/order_screen.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:coffee/constants.dart';
import 'package:coffee/product.dart';
import 'package:coffee/screens/order_screen/order_screen.dart';
import 'components/bottom_nav_bar.dart';
import 'components/product_list.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/menu.svg'),
        ),
        actions: [
          IconButton(
              icon: SvgPicture.asset('assets/images/search.svg'),
              onPressed: null)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: ListView(
          children: [
            const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'sen',
                  fontSize: 36,
                ),
                children: [
                  TextSpan(text: 'It\'s Great'),
                  TextSpan(
                    text: ' Day for Coffee',
                    style: TextStyle(
                        fontFamily: 'sen',
                        fontWeight: FontWeight.bold,
                        color: kSecondaryColor),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return OrderScreen();
                },
              )),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context, index) => ProductList(
                  product: products[index],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
