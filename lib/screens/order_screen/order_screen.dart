import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:Coffee/assets/images';
import '../../constants.dart';
import '../home_screen/components/bottom_nav_bar.dart';

int itemCount = 1;

class OrderScreen extends StatefulWidget {
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/images/bg.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 100),
                        height: 160,
                        width: 180,
                        child: SvgPicture.asset("assets/images/macchiato.svg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: kDefaultPadding),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios)),
                          SizedBox(
                            width: 50,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Macchiato",
                            style: kProductNameStyle,
                          ),
                          Row(
                            children: [
                              Text(
                                '₹',
                                style: TextStyle(
                                    color: kSecondaryColor,
                                    fontFamily: 'sen',
                                    fontSize: 24),
                              ),
                              Text(
                                "120",
                                style: TextStyle(
                                    color: kSecondaryColor,
                                    fontFamily: 'sen',
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                itemCount++;
                              });
                            },
                            child: Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                color: kSecondaryColor,
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(30),
                                ),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.remove,
                                ),
                                onPressed: () {
                                  if (itemCount > 1)
                                    setState(() {
                                      itemCount--;
                                    });
                                },
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 36,
                            width: 36,
                            child: Center(
                                child: Text(
                              '$itemCount',
                              style: TextStyle(
                                  fontFamily: 'sen',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                          Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(30),
                              ),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                              ),
                              onPressed: () {
                                if (itemCount < 9)
                                  setState(() {
                                    itemCount++;
                                  });
                              },
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Size',
                        style: kProductNameStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: SvgPicture.asset(
                                  "assets/images/size_small.svg"),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: SvgPicture.asset(
                                  "assets/images/size_medium.svg"),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: SvgPicture.asset(
                                  "assets/images/size_large.svg"),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Sugar',
                          style: kProductNameStyle,
                        ),
                        Opacity(
                          opacity: 0.4,
                          child: Text(
                            ' (in cubes)',
                            style: kProductNameStyle,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset("assets/images/sugar_0.svg"),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: SvgPicture.asset("assets/images/sugar_1.svg"),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: SvgPicture.asset("assets/images/sugar_2.svg"),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: SvgPicture.asset("assets/images/sugar_3.svg"),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: Text(
                        'add to cart',
                        style: TextStyle(
                            fontFamily: 'sen',
                            fontSize: 20,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
