import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:notification_app/core/theme/color/app_colors.dart';


class CarouselSliderWidget extends StatelessWidget {
  final List<String> imagePaths; 

  const CarouselSliderWidget({
    super.key,
    required this.imagePaths, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            viewportFraction: 0.9,
            enableInfiniteScroll: true,
          ),
          items: imagePaths.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.only(right: 22.0, top: 10), // Adds right-side spacing only
                  child: Container(
                    color: AppColor.background,
                  //  elevation: 5,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                       // width: double.infinity,
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
