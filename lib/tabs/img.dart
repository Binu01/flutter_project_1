import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class img extends StatefulWidget {
  const img({super.key});

  @override
  State<img> createState() => _imgState();
}

class _imgState extends State<img> {
  @override

  ImagePicker _picker = ImagePicker();
  XFile? _image;

  Widget build(BuildContext context) {
    return Scaffold(

   body: SingleChildScrollView(
     child: Column(
       children: [
         ElevatedButton(onPressed: ()async {
           _image = await _picker.pickImage(source: ImageSource.gallery);

           setState(() {

           }
           );
         },
             child: Text("Select image")),
         //_image = null? Container():Image.file(File(_image!.path))
        _image == null?Container(): Image.file(File(_image!.path))
       ],
     ),
   ),

    );
  }
}
