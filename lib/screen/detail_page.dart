import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';
import 'home_page.dart';

class savepage extends StatefulWidget {
  const savepage({super.key});

  @override
  State<savepage> createState() => _savepageState();
}

class _savepageState extends State<savepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'save page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: stdList.length,
          itemBuilder: (context, index) => Card(
            color: Colors.blueAccent.shade100,
            child: ListTile(
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: (stdList[index].img != null)
                              ? DecorationImage(
                                  image: FileImage(stdList[index].img!),
                                  fit: BoxFit.cover)
                              : null,
                          color: Colors.white,
                          shape: BoxShape.circle),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:100),
                          child: Text(
                            '${stdList[index].name!.text}',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const  EdgeInsets.only(right:100),
                          child: Text('${stdList[index].id!.text}', style: TextStyle(color: Colors.white,fontSize: 12),),
                        ),
                        Padding(
                          padding: const  EdgeInsets.only(right:100),
                          child: Text('${stdList[index].standard!.text}', style: TextStyle(color: Colors.white,fontSize: 12),),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {});
                          stdList.removeAt(index);
                        },
                        icon: Icon(Icons.delete)),
                    IconButton(
                        onPressed: () {
                          setState(() {});

                        },
                        icon: Icon(Icons.edit))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/save');
        },
        child: Container(
          height: 50,
          width:50,
          decoration: BoxDecoration(color: Colors.blueAccent,shape: BoxShape.circle),
          child: Icon(Icons.remove_red_eye_outlined,color: Colors.white,)
        ),
      ),
    );
  }
}
