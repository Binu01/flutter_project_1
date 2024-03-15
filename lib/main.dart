import 'package:flutter/material.dart';
import 'package:project1/otppage.dart';
import 'package:project1/regpage.dart';
import 'package:project1/screens/splashscreen.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Splash(),

    );
  }
}
class Lgpage extends StatefulWidget {
  const Lgpage({super.key});

  @override
  State<Lgpage> createState() => _LgpageState();
}
class _LgpageState extends State<Lgpage> {
  @override


  final _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 25),
                child: Container(
                    height: 300, width: 800,
                    child: Lottie.asset("assets/anm/Animation - 1706944044472.json"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 12),
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
                    suffixIcon: Icon(Icons.mail),

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
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0)),
                    labelText: "Password",
                    hintText: "Enter your Password",
                    suffixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              SizedBox(),
              ElevatedButton(onPressed: () {
                if (_formkey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => otppg(),
                      )
                  );
               }
                },
                  child:Text("Login",style: TextStyle(color:Colors.purple,fontSize: 25,fontWeight:FontWeight.bold),) ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   height: 30,
                   width: 30,
                   child: InkWell( onTap:(){} ,
                     child: Image.asset("assets/images/google_300221.png"),
                   ),
                 ),
                 SizedBox(width: 15,),
                 Container(
                   height: 30,
                   width: 30,
                   child: InkWell( onTap:(){} ,
                     child: Image.asset("assets/images/facebook_5968764.png"),
                   ),
                 ),
                 SizedBox(width: 15,),
                 Container(
                   height: 30,
                   width: 30,
                   child: InkWell( onTap:(){} ,
                     child: Image.asset("assets/images/twitter_5969020.png"),
                   ),
                 )
               ],
              ),
              TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Reg(),
                    )
                );
              },
                  child: Text("create a new account?",style: TextStyle(color: Colors.purple),)),

            ],
          ),
        ),
      ),
      
    );
  }
}

