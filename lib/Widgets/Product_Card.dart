import 'package:appbar/Presentation/ui/screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Presentation/ui/utility/image_assets.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(80),
      onTap: (){
        Get.to(const ProductDetailsScreen());
      },
      child: Card(
        child: SizedBox(
          width: 120,
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8),),
                  image: DecorationImage(
                    image:AssetImage(
                        ImageAssets.adiddaspng
                    ), ),
                  color: Colors.blue.shade100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Nike shoe AK50', maxLines: 1, style: TextStyle(overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$90'),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(Icons.star, size: 15, color: Colors.amber,),
                            Text('4.8'),
                          ],
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(Icons.favorite, size: 15,color: Colors.red,),
                          ) ,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}