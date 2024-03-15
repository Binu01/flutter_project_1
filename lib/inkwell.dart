
import 'package:flutter/material.dart';
class inkwell extends StatefulWidget {
  const inkwell({super.key});

  @override
  State<inkwell> createState() => _inkwellState();
}
class _inkwellState extends State<inkwell> {
  List<variety> dosa = [
    variety(picc:"assets/images/plane roast.jpg",name:"Plain Roast",price:"50/- Rs."),
    variety(picc:"assets/images/masala roast.jpg",name:"Masala Roast",price:"70/- Rs."),
    variety(picc:"assets/images/ghee roast.jpg",name:"Ghee Roast",price:"60/- Rs."),
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 10),
          child: Column(
            children: [
              Image.asset("assets/images/photo-1668236543090-82eba5ee5976.avif"),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                    child: Text("Roast",style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:Colors.orange,),)),
              ),
              Container(
                height: 300,
                width: 400,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dosa.length,
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:1 ),
                    itemBuilder:(BuildContext context, int index)=>
                        Card(
                          child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(image:AssetImage("${dosa[index].picc}"),
                            )
                        ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Text("${dosa[index].name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 220, 0, 0),
                                  child: Text("${dosa[index].price}",style: TextStyle(fontSize:20),),
                                )
                              ],
                            ),
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class variety {
  late String picc, name, price;
  variety ({ required this.picc, required this.name, required this.price});
}



