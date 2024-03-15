import 'package:flutter/material.dart';
    class con extends StatefulWidget {
      const con({super.key});
      @override
      State<con> createState() => _conState();
    }
    class _conState extends State<con> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: ListView.separated(
            separatorBuilder:(context,index)=> Divider(thickness: 4,color: Colors.black12,),
            itemCount:9,
            itemBuilder:(BuildContext context, int index){
              return ListTile(
                leading: CircleAvatar(
                 backgroundColor: Colors.red,
                ),
                title: Text("Sam") ,
                trailing: Icon(Icons.chat),
              );
            } ,

          ),
        );
      }
    }

