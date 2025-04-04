import 'package:flutter/material.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Icon(Icons.shop,size: 40,),
          ),
          SizedBox(
            height: 8,
          ),
          Text('Electromic', style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),),

        ],
      ),
    );
  }
}
