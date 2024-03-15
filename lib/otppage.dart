import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:lottie/lottie.dart';
import 'package:project1/hmpg.dart';
class otppg extends StatefulWidget {
  const otppg({super.key});
  @override
  State<otppg> createState() => _otppgState();
}
class _otppgState extends State<otppg> {
  @override
  final SnackBar _bar = SnackBar(
    content: Text("Successfully logged in"),
    duration:Duration(seconds: 3),
  );
  final _keyform = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Form(
         key: _keyform,
         child: Padding(
           padding: const EdgeInsets.symmetric(vertical: 50),
           child: Container(
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                     height: 300,
                     width: 400,
                     child: Lottie.asset("assets/anm/otpanm.json")
                 ),
                 Text("Enter otp",style: TextStyle(fontSize: 30),),
                 SizedBox(
                   height: 10,
                 ),
                 OtpTextField(
                    borderWidth: 2,
                   numberOfFields: 6,
                   borderColor: Color(0xFF512DA8),
                   showFieldAsBox: true,
                   onCodeChanged: (String code) {

                   }, //runs when every textfield is filled
                   onSubmit: (String verificationCode){
                   }
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 20),
                   child: ElevatedButton(onPressed: (){
                     showDialog(
                         context: context,
                         builder: (context){
                           return AlertDialog(
                             title: Text("Verification Code"),
                             actions: [
                               Row(
                                 children: [
                                   TextButton(onPressed: (){
                                     Navigator.pop(context);
                                   },
                                       child: Text("Cancel")),
                                   TextButton(onPressed: (){
                                     ScaffoldMessenger.of(context).showSnackBar(_bar);
                                     Navigator.push(context,  MaterialPageRoute(builder: (context) => Hmpg(),
                                     )
                                     );
                                   },
                                       child: Text("Confirm"))
                                 ],
                               )
                             ],
                           );
                         }
                     );
                   },
                     child: Text("Submit"),),
                 ),
                 ],
               )
           ),
         ),
       ),
     )
    );
  }
}
