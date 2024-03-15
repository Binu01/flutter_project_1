import 'package:flutter/material.dart';
import 'package:project1/prfile.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'hmpg.dart';

class edit extends StatefulWidget {
  const edit({super.key});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {

  var name = "";
  var email = "";
  var phno ="";

  @override
  void initState() {
    // TODO: implement initState
    edited();
    super.initState();
  }

  edited() async{
    final prefs = await SharedPreferences.getInstance();
    name = prefs.getString('name')!;
    email = prefs.getString('email')!;
    phno = prefs.getString('phno')!;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Card(
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal:50),
                  child: Container(
                    height: 200,
                    width: 300,
                    child: CircleAvatar(
                      backgroundImage: ExactAssetImage("assets/images/images.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Row(
                    children: [
                      Text("Username: ",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                  Text(name,style: TextStyle(fontSize: 20,color: Colors.redAccent),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Row(
                    children: [
                      Text("E-mail: ",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                      Text(email,style: TextStyle(fontSize: 20,color: Colors.redAccent),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Row(
                    children: [
                      Text("Phn No.: ",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                      Text(phno,style: TextStyle(fontSize: 20,color: Colors.redAccent),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,30,0,20),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>dp(),
                    )
                    );
                  },
                      child: Text("Edit")),
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Hmpg()
                  )
                  );
                },
                    child: Text("Go back"))
              ],
            ),
          ),
        ),
      ),

    );
  }
}