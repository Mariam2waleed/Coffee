// import 'package:flutter/material.dart';
 import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_/';
import 'package:flutter/material.dart';
import 'package:coffee/constants.dart';
import 'package:coffee/product.dart';

class ProductList extends StatelessWidget {
  final Product product;
  void Function()? onPress;
  ProductList({
    Key? key,
    onPress,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Container(
              width: 60,
              child: SvgPicture.asset(product.image),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              product.name,
              style: kProductNameStyle,
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
