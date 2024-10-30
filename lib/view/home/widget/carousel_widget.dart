import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../core/util/png_asset.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    super.key,
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
            // This aligns each item to the left so that only the right portion shows
          //  enlargeStrategy: CenterPageEnlargeStrategy.height,
            enableInfiniteScroll: true,
          ),
          items: [
            AppPngPath.carouselImageOne,
            AppPngPath.carouselImageTwo,
            AppPngPath.carouselImageOne,
            AppPngPath.carouselImageTwo,
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.only(right: 22.0), // Adds right-side spacing only
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        i,
                        fit: BoxFit.cover,
                        width: double.infinity,
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
