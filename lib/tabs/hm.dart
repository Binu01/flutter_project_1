import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../inkwell.dart';
class hm extends StatefulWidget {
  const hm({super.key});

  @override
  State<hm> createState() => _hmState();
}

class _hmState extends State<hm> {
  List<image> pic=[
    image(pict:"assets/images/photo-1546069901-ba9599a7e63c.avif"),
    image(pict:"assets/images/photo-1464349095431-e9a21285b5f3.avif"),
    image(pict:"assets/images/photo-1505394033641-40c6ad1178d7.avif"),
    image(pict:"assets/images/photo-1668236543090-82eba5ee5976.avif"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                suffixIcon: Icon(Icons.search),
                hintText: "Search...",
              ),
            ),
          ),
          CarouselSlider(items: [
            Container(
              child: Image.asset("assets/images/foodiesfeed.com_caesar-salad-with-chicken.jpg"),
            ),
            Container(
              child: Image.asset("assets/images/foodiesfeed.com_glasses-with-ice.jpg"),
            ),
            Container(
              child: Image.asset("assets/images/foodiesfeed.com_pizza-in-a-restaurant.jpg"),
            ),
            Container(
              child: Image.asset("assets/images/foodiesfeed.com_white-chocolate-cheesecake.jpg"),
            ),
            Container(
              child: Image.asset("assets/images/big-sandwich-hamburger-with-juicy-beef-burger-cheese-tomato-red-onion-wooden-table_2829-19631.jpg"),
            ),
          ], options: CarouselOptions(
           aspectRatio: 21/9,
            viewportFraction: 0.9,
            initialPage: 0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(milliseconds: 900),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.7,
            scrollDirection: Axis.horizontal,
          )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Container(
              child: Image.asset("assets/images/homemade-meal-cooked-poultry-fresh-vegetable-celebration-generated-by-ai.jpg"),
            ),
          ),
          // SizedBox(
          //   height: 30,
          // ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
                    itemCount:pic.length,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1) ,
                itemBuilder:(BuildContext context, int index)=>
                  Card(
                    child: Column(
            children: [
              GestureDetector(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context) => inkwell(),)
                  );
                },
                child: Container(
                            decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage("${pic[index].pict}"))
                            ),

                   height:240,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Positioned(
                          child: Container(
                            height: 30,
                              width: 40,
                              child: Image.asset("assets/images/sale_6136996.png")),
                        right: 10,
                        top: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
                    ),
               )
               ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/noodle.jpg"),
            ),
          )
        ],
      ),
    ),

    );
  }
}
class image{
  late String pict;
image({required this.pict});
}
