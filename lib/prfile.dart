import 'package:flutter/material.dart';
import 'package:project1/hmpg.dart';
import 'package:project1/prfedit.dart';
import 'package:shared_preferences/shared_preferences.dart';
class dp extends StatefulWidget {
  const dp({super.key});

  @override
  State<dp> createState() => _dpState();
}
class _dpState extends State<dp> {
  final namecrtl = TextEditingController();
  final emailctrl = TextEditingController();
  final phnctrl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: SingleChildScrollView(
     child: Padding(
       padding: const EdgeInsets.symmetric(vertical: 200),
       child: Column(
         children: [
           TextFormField(
             controller: namecrtl,
             decoration: InputDecoration(
                 hintText: "Enter your name",
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)
                     )
                 )
             ),
           ),
           SizedBox(
             height: 20,
           ),
           TextFormField(
             controller: emailctrl,
             decoration: InputDecoration(
                 hintText: "Enter your E-mail",
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)
                     )
                 )
             ),
           ),
           SizedBox(
             height: 20,
           ),
           TextFormField(
             controller: phnctrl,
             decoration: InputDecoration(
                 hintText: "Enter your Phone No.",
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)
                     )
                 )
             ),
           ),
           SizedBox(
             height: 20,
           ),
           Container(
             width: 100,
             height: 50,
     
             child:  Padding(
               padding: const EdgeInsets.symmetric(vertical: 10),
               child: ElevatedButton(onPressed: () async{
                 final prefs = await SharedPreferences.getInstance();
                 await prefs.setString("name", namecrtl.text);
                 await prefs.setString("email", emailctrl.text);
                 await prefs.setString("phno", phnctrl.text);
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> edit()));
               },
     
                   child: Text("Update")),
             ),
           ),
     
         ],
       ),
     ),
   ),
      
    );
  }
}
