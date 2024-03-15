import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/prfedit.dart';
import 'package:project1/tabs/cnts.dart';
import 'package:project1/tabs/hm.dart';
import 'package:project1/tabs/img.dart';

import 'map/loctn.dart';
class Hmpg extends StatefulWidget {
  const Hmpg({super.key});

  @override
  State<Hmpg> createState() => _HmpgState();
}

class _HmpgState extends State<Hmpg> {
  @override

  int _intnum = 0;
  List tabs =[
    hm(),
   img(),
    con(),
    loc(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text("FOOD DESTINATION",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},
              icon:Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
            accountName:Text("Anandakuttan") ,
            accountEmail: Text("fudh.anandhakkuttan@food.com"),
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage("assets/images/images.jpg"),
        ),
        ),
        ListTile(
          title: Text("Profile"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context) => edit(),
            )
            );
          },
        ),
        ListTile(
          title: Text("My Orders"),
          onTap: (){},
        ),
        ListTile(
          title: Text("Settings"),
          onTap: (){},
        ),
      ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(
          backgroundColor: Colors.green,
          label: "Home",
            icon: Icon(Icons.home,color: Colors.black,) ),
        BottomNavigationBarItem(
            backgroundColor: Colors.green,
            label: "image",
            icon: Icon(Icons.image,color: Colors.black,) ),
        BottomNavigationBarItem(
            backgroundColor: Colors.green,
            label: "Contacts",
            icon: Icon(Icons.contacts,color: Colors.black,)),
        BottomNavigationBarItem(
            backgroundColor: Colors.green,
            label: "Location",
            icon: Icon(CupertinoIcons.location_solid,color: Colors.black,) ),
      ],
          iconSize: 25,
        // showSelectedLabels: false,
        currentIndex:_intnum,
        onTap: (int index){
        setState(() {
          _intnum = index;
        });
        },
      ),
      body:Center(
        child: tabs.elementAt(_intnum),
      ),

    );
  }
}
