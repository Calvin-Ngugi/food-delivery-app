import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/food2.jpg"
                  )
                )
              ),
            )),
          //icons appbar
          Positioned(
            top: Dimensions.height40,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart),
              ],
            )
          ),
          //introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize-20,
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Fruity French Toast",),
                  SizedBox(height: Dimensions.height20,),
                  BigText(text: "Introduce"),
                  SizedBox(height: Dimensions.height20),
                  Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Lorem ipsum dolor sit amet ultricies sit enim vitae velit eros curabitur fermentum vel in hendrerit augue massa molestie sodales duis nam bibendum quisque ac ante curae etiam porttitor porta pellentesque egestas nulla sapien sollicitudin nostra penatibus libero sed odio et nascetur mi lacinia quam ex convallis felis scelerisque inceptos venenatis dis purus auctor pharetra vivamus netus facilisis gravida torquent aliquet sagittis mattis tincidunt iaculis potenti ligula metus lorem congue class fringilla fames proin adipiscing sem nec rutrum ut conubia dignissim ullamcorper faucibus consequat vehicula maximus maecenas fusce ultrices cubilia nisl litora feugiat ridiculus condimentum posuere senectus luctus"))),

                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.fromLTRB(Dimensions.width20, Dimensions.height30, Dimensions.width20, Dimensions.height30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimensions.radius20*2), topRight: Radius.circular(Dimensions.radius20*2)),
          color: AppColors.buttonBackgroundColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(Dimensions.width20, Dimensions.height20, Dimensions.width20, Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor, size: Dimensions.iconSize24,),
                  SizedBox(width: Dimensions.width5,),
                  BigText(text: '0'),
                  SizedBox(width: Dimensions.width5,),
                  Icon(Icons.add, color: AppColors.signColor, size: Dimensions.iconSize24,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(Dimensions.width20, Dimensions.height20, Dimensions.width20, Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor
              ),
              child: BigText(text: "550Ksh | Order", color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
