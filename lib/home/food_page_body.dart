import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double height = 220;

  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position){
        return _buildPageItem(position);
      })
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans =  height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else if(index == _currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans =  height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else if(index == _currPageValue.floor()-1) {
      var currScale = _scaleFactor +
          (_currPageValue - index - 1) * (1 + _scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/food1.jpg")
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
              ),
              child: Container(
                padding: EdgeInsets.only(top: 5.0, left: 15, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 8, top: 10),
                        child: BigText(text: 'Beef burger and fries')),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor,)),
                        ),
                        SizedBox(width: 10),
                        SmallText(text: '4.5'),
                        SizedBox(width: 10),
                        SmallText(text: '1287 comments'),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidget(icon: Icons.circle, iconColor: Colors.deepOrangeAccent, color: AppColors.paraColor, text: 'Normal'),
                        IconAndTextWidget(icon: Icons.location_on, iconColor: AppColors.mainColor, color: AppColors.paraColor, text: '1.7Km'),
                        IconAndTextWidget(icon: Icons.watch_later_outlined, iconColor: Colors.red, color: AppColors.paraColor, text: '32 Min'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
