import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project1/main.dart';
class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  @override

  final SnackBar _bar = SnackBar(
    content: Text("Successfully Registered, You may now login"),
    duration:Duration(seconds: 3),
  );
  final _formkey = GlobalKey<FormState>();
  TextEditingController datectrl = TextEditingController();
  TextEditingController timectrl = TextEditingController();
String? gender;

  int select = 0;


  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Center(
                  child: Text("REGISTER",style: TextStyle(color: Colors.green,fontSize: 40,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: TextFormField(

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Required';
                      }
                      return null;
                    },

                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0)),
                      labelText: "Name",
                      hintText: "Enter your name",
                      suffixIcon:Icon(Icons.person),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: TextFormField(

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Required';
                      }
                      return null;
                    },


                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0)),
                      labelText: "E-mail",
                      hintText: "Enter your e-mail",
                      suffixIcon:Icon(CupertinoIcons.mail),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: TextFormField(

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Required';
                      }
                      return null;
                    },


                    controller: datectrl,
                    readOnly: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0)),
                      labelText: "DOB",
                      suffixIcon:IconButton(onPressed: ()async{
                     final DateTime? _date = await showDatePicker(context: context,
                          firstDate:DateTime(2000),
                          currentDate: DateTime.now(),
                          lastDate: DateTime(2025),
                      );
                     final formate = DateFormat("dd/MM/yyyy").format(_date!);
                     setState(() {
                      datectrl.text = formate.toString();
                     });
                      },
                          icon:Icon(Icons.calendar_month) ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: TextFormField(

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Required';
                      }
                      return null;
                    },

                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0)),
                      labelText: "Mobile No",
                      hintText: "Enter your mobile No",
                      suffixIcon:Icon(Icons.phone),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: TextFormField(

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Required';
                      }
                      return null;
                    },

                    readOnly: true,
                    controller: timectrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0)),
                      labelText: "Time",

                      suffixIcon:IconButton(onPressed: ()async{
                       final TimeOfDay? _time = await showTimePicker(context: context,
                            initialTime: TimeOfDay.now(),
                       );
                       setState(() {
                        timectrl.text = _time!.format(context);
                       });
                      },
                          icon: Icon(Icons.timer))

                    ),
                  ),
                ),

                Center(
                  child: DropdownButton(
                    // alignment: AlignmentDirectional.bottomEnd,
                    // borderRadius: BorderRadius.circular(10),
                      value: select,
                      items:[
                    DropdownMenuItem(child: Text("-select your state"),
                    value: 0,),
                        DropdownMenuItem(child: Text("Kerala"),
                          value: 1,),
                        DropdownMenuItem(child: Text("Tamil Nadu"),
                          value: 2,),
                        DropdownMenuItem(child: Text("Karnataka"),
                          value: 3,),
                        DropdownMenuItem(child: Text("Andhra Pradesh"),
                          value: 4,),
                  ] ,

                      onChanged:(int? value){
                        setState(() {
                          select = value!;

                        });
                      } ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 200, 0),
                  child: Text("Select your gender:", style: TextStyle(fontSize: 18),),
                ),
                Row(

                  children: [
                    Container(
                      height: 50,
                      width: 138,
                      child: ListTile(
                        title: Text("male"),
                        leading: Radio(value:'male' , groupValue: gender, onChanged: (String? value){
                          setState(() {
                        gender = value;
                      });
                          },),
                      ),
                    ),


                Container(
                  height: 50,
                  width: 152,
                  child: ListTile(
                    title: Text("female"),
                    leading: Radio(value:'female' , groupValue: gender, onChanged: (String? value){
                      setState(() {
                        gender = value;
                      });
                    },),
                  ),
                ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(onPressed: (){
                    if (_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(_bar);
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => Lgpage(),
                          )
                      );
                    }
                  },
                      child: Text("Register",style: TextStyle(fontSize: 30),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
