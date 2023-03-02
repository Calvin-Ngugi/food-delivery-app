import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

class RecommendedFoodDetail extends StatefulWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodDetail> createState() => _RecommendedFoodDetailState();
}

class _RecommendedFoodDetailState extends State<RecommendedFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 75,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear_rounded),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(Dimensions.radius20), topLeft: Radius.circular(Dimensions.radius20),),
                  color: Colors.white,
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child: Center(
                  child: BigText(size: Dimensions.font26,text: "Tasty Beef Burger"),
                ),
              ),
            ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/food1.jpg",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                )
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width10, bottom: Dimensions.height10),
                  child: ExpandableTextWidget(text: "Lorem ipsum dolor sit amet ultricies sit enim vitae velit eros curabitur fermentum vel in hendrerit augue massa molestie sodales duis nam bibendum quisque ac ante curae etiam porttitor porta pellentesque egestas nulla sapien sollicitudin nostra penatibus libero sed odio et nascetur mi lacinia quam ex convallis felis scelerisque inceptos venenatis dis purus auctor pharetra vivamus netus facilisis gravida torquent aliquet sagittis mattis tincidunt iaculis potenti ligula metus lorem congue class fringilla fames proin adipiscing sem nec rutrum ut conubia dignissim ullamcorper faucibus consequat vehicula maximus maecenas fusce ultrices cubilia nisl litora feugiat ridiculus condimentum posuere senectus luctu. Lorem ipsum dolor sit amet ultricies sit enim vitae velit eros curabitur fermentum vel in hendrerit augue massa molestie sodales duis nam bibendum quisque ac ante curae etiam porttitor porta pellentesque egestas nulla sapien sollicitudin nostra penatibus libero sed odio et nascetur mi lacinia quam ex convallis felis scelerisque inceptos venenatis dis purus auctor pharetra vivamus netus facilisis gravida torquent aliquet sagittis mattis tincidunt iaculis potenti ligula metus lorem congue class fringilla fames proin adipiscing sem nec rutrum ut conubia dignissim ullamcorper faucibus consequat vehicula maximus maecenas fusce ultrices cubilia nisl litora feugiat ridiculus condimentum posuere senectus luctus. Lorem ipsum dolor sit amet ultricies sit enim vitae velit eros curabitur fermentum vel in hendrerit augue massa molestie sodales duis nam bibendum quisque ac ante curae etiam porttitor porta pellentesque egestas nulla sapien sollicitudin nostra penatibus libero sed odio et nascetur mi lacinia quam ex convallis felis scelerisque inceptos venenatis dis purus auctor pharetra vivamus netus facilisis gravida torquent aliquet sagittis mattis tincidunt iaculis potenti ligula metus lorem congue class fringilla fames proin adipiscing sem nec rutrum ut conubia dignissim ullamcorper faucibus consequat vehicula maximus maecenas fusce ultrices cubilia nisl litora feugiat ridiculus condimentum posuere senectus luctus. Lorem ipsum dolor sit amet ultricies sit enim vitae velit eros curabitur fermentum vel in hendrerit augue massa molestie sodales duis nam bibendum quisque ac ante curae etiam porttitor porta pellentesque egestas nulla sapien sollicitudin nostra penatibus libero sed odio et nascetur mi lacinia quam ex convallis felis scelerisque inceptos venenatis dis purus auctor pharetra vivamus netus facilisis gravida torquent aliquet sagittis mattis tincidunt iaculis potenti ligula metus lorem congue class fringilla fames proin adipiscing sem nec rutrum ut conubia dignissim ullamcorper faucibus consequat vehicula maximus maecenas fusce ultrices cubilia nisl litora feugiat ridiculus condimentum posuere senectus luctus",),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(Dimensions.width20*2.5, Dimensions.height10, Dimensions.width20*2.5, Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppIcon(icon: Icons.remove, backgroundColor: AppColors.mainColor, iconColor: Colors.white,),
                BigText(text: "550.00Ksh X 0", size: Dimensions.font26, color: AppColors.mainBlackColor,),
                AppIcon(icon: Icons.add, backgroundColor: AppColors.mainColor, iconColor: Colors.white,),
              ],
            ),
          ),
          Container(
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
                  child: Icon(Icons.favorite_rounded, color: AppColors.mainColor,)
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
        ],
      ),
    );
  }
}
