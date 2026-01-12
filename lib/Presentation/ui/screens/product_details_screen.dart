import 'package:appbar/Widgets/custom_stepper.dart';
import 'package:flutter/material.dart';
class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<String>Photolist=[
    'assets/images/slider.png',
    'assets/images/woman.png',
    'assets/images/Boot.png',
  ];
  int myslideindex=0;
  List<Color> colors=[
    Colors.black,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];
  List<String> sizes=[
'S',
    'M',
    'L',
    'XL',
    'XXL',
  ];
  int _selectedColorsindex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: Colors.grey,
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 250,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                    onPageChanged: (Value) {
                      setState(() {
                        myslideindex=Value;
                      });
                    },
                    itemCount: Photolist.length,
                    itemBuilder: ( context, index){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(Photolist[index],fit: BoxFit.cover,),
                      );
                    }),
              ),
            ),
            Center(
              child: SizedBox(
                height: 55,
                width: 260,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Photolist.length,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: index==myslideindex?Colors.grey:Colors.black,
                            shape: BoxShape.circle,
                          ),
                          height: 25,
                          width: 20,
                        ),
                      );
                    }),
              ),
            ),
            // SizedBox(
            //   height: 200,
            //   width: 200,
            //   child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: Photolist.length,
            //       itemBuilder: (context, index) {
            //         return Container(
            //           height: 20,
            //           width: 20,
            //           decoration: BoxDecoration(
            //             color: Colors.red,
            //             shape: BoxShape.circle
            //           ),
            //         );
            //       }),
            // )
            Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text('Adiddas Shoe HK34895- Black Edition', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              const Text('\$90'),
                              const Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Icon(Icons.star, size: 15, color: Colors.amber,),
                                  Text('4.8'),
                                ],
                              ),
                              TextButton(
                                  onPressed: () { }, child: const Text('Reviews', style: TextStyle(
                                  fontSize: 12
                              ),)),
                              const Card(
                                child: Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Icon(Icons.favorite, size: 15,color: Colors.red,),
                                ) ,
                              )
                            ],
                          ),
                        ],
                      ),
                      const Text('Color', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                      ),),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 30,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                            itemCount: colors.length,
                            itemBuilder: (context, index ){
                          return CircleAvatar(
                            backgroundColor: colors[index],
                          );
                        },
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                        child: Text('Size', style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                        ),),
                      ),
                      SizedBox(
                        height: 25,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: sizes.length,
                          itemBuilder: (context, index ){
                            return Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey)
                              ),
                              alignment: Alignment.center,
                              child: Text(sizes[index]),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Description', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                      ),),
                  const Text( '''Shoes serve multiple purposes beyond basic protection. They are worn for hygiene, comfort, and style, and can be designed for specific activities such as athletic performance, dancing, or safety in industrial environments.
                ''')
                    ],
                  ),
                ),
SizedBox(
  height: 20,
),
Container(
  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
  decoration: BoxDecoration(
    color: Colors.grey
  ),
  child: Row(
    children: [
      Column(
        children: [
          Text('Price', style: TextStyle(
            fontWeight: FontWeight.w700,
          ),),
          Text('\$295'),
        ],
      ),
      SizedBox(
        width: 250,
      ),
      ElevatedButton(onPressed: (){}, child: Text('Add to Cart')),
    ],
  ),
)
          ],
        ),
      ),
    );
  }
}
