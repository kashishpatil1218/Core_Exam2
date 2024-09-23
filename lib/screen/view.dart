
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';
import 'home_page.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
            'details',style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...List.generate(stdList.length, (index) => Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 100),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  image: (stdList[index].img!=null)?DecorationImage(image: FileImage(stdList[index].img!),fit: BoxFit.cover):null,
                ),
              ),
              Text( ' Student Name :${stdList[index].name!.text}',style: TextStyle(fontSize:15,),),
              Text('Student Grid   :${stdList[index].id!.text}',style: TextStyle(fontSize: 15,)),
              Text('Student Grid   :${stdList[index].standard!.text}',style: TextStyle(fontSize:15,)),

            ],
          ),
          ),


        ],
      ),
    );
  }
}