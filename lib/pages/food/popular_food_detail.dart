import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/food2.jpg"
                  )
                )
              ),
            )),
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
                  Container(
                      padding: EdgeInsets.only(
                          left: Dimensions.width10, top: Dimensions.height10),
                      child: BigText(text: 'Fruity French Toast')),
                  SizedBox(height: Dimensions.height10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                                (index) => Icon(
                              Icons.star,
                              color: AppColors.mainColor,
                            )),
                      ),
                      SizedBox(width: Dimensions.width5),
                      SmallText(text: '4.5'),
                      SizedBox(width: Dimensions.width5),
                      SmallText(text: '1287 comments'),
                    ],
                  ),
                  SizedBox(height: Dimensions.height20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndTextWidget(
                          icon: Icons.circle,
                          iconColor: Colors.deepOrangeAccent,
                          color: AppColors.paraColor,
                          text: 'Normal'),
                      IconAndTextWidget(
                          icon: Icons.location_on,
                          iconColor: AppColors.mainColor,
                          color: AppColors.paraColor,
                          text: '1.7Km'),
                      IconAndTextWidget(
                          icon: Icons.watch_later_outlined,
                          iconColor: Colors.red,
                          color: AppColors.paraColor,
                          text: '32 Min'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
