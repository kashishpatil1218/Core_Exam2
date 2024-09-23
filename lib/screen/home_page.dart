// import 'dart:io';
//
// import 'package:coreexam2/utils/global.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// // import 'package:coreexam2/modal/modal.dart' ;
// // import 'package:coreexam2/utils/global.dart';
//
// class Home_page extends StatefulWidget {
//   const Home_page({super.key});
//
//   @override
//   State<Home_page> createState() => _Home_pageState();
// }
//
// class _Home_pageState extends State<Home_page> {
//   File? _img;
//   final picker = ImagePicker();
//
//   Future getimage() async {
//     final pickedimage = await picker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       if (pickedimage != null) {
//         _img = File(pickedimage.path);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           centerTitle: true,
//           title: Text(
//             'Student Detail',
//             style: TextStyle(color: Colors.white, fontSize: 18),
//           ),
//           backgroundColor: Colors.blueAccent),
//       body: Column(
//         children:[
//           studentsDetailMethod(name: 'k', id: '10', std: '2'),
//         ]
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).pushNamed('/detail');
//         },
//         backgroundColor: Colors.blueAccent,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//         child: Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
//
//   Widget studentsDetailMethod(
//       {required String name, required String id, required String std}) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(10),
//           child: GestureDetector(
//             onTap: () {
//               getimage();
//             },
//             child: Container(
//                 height: 100,
//                 width: 100,
//                 decoration:
//                     BoxDecoration(color: Colors.black, shape: BoxShape.circle),
//                 child: _img != null
//                     ? ClipOval(
//                         child: Image.file(
//                           _img!,
//                           fit: BoxFit.cover,
//                         ),
//                       )
//                     : const Icon(
//                         Icons.camera_alt_outlined,
//                         color: Colors.white,
//                       )),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(children: [
//               TextField( controller: txt_name,
//                 decoration: InputDecoration(
//                   hintText: 'Raj patel',
//                   hintStyle: TextStyle(fontSize: 12),
//                   label: Text('Name'),
//                   labelStyle: TextStyle(fontSize: 12),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               TextField(
//                 controller: txt_id,
//                 decoration: InputDecoration(
//                   hintText: '5333',
//                   hintStyle: TextStyle(fontSize: 12),
//                   label: Text('Grid'),
//                   labelStyle: TextStyle(fontSize: 12),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: '12',
//                   hintStyle: TextStyle(fontSize: 12),
//                   label: Text('Strandard'),
//                   labelStyle: TextStyle(fontSize: 12),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Icon(Icons.delete_outline),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }




import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/global.dart';
ImagePicker picker = ImagePicker();
XFile? xFileimg;
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text('Home Page',style: TextStyle(color: Colors.white),),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  IconButton(
                      onPressed: () {
                        setState(() {});
                        TextEditingController txtController =
                        TextEditingController();
                        if (modal == txtController) {
                          null;
                        } else {
                          TextEditingController txtname =
                          TextEditingController();
                          TextEditingController txtid =
                          TextEditingController();
                          TextEditingController txtstad =
                          TextEditingController();
                          File? img;
                          stdList.add(modal(
                            name: txtname,
                            id: txtid,
                            standard: txtstad,
                            img: img,
                          ));
                        }
                      },
                      icon: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueAccent,

                        ),
                        child: Icon(Icons.add
                          ,color: Colors.white,
                        ),
                      )),

                  ...List.generate(
                    stdList.length,
                        (index) => Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: (stdList[index].img != null)
                                      ? DecorationImage(image: FileImage(stdList[index].img!),fit: BoxFit.cover)
                                      : null,
                                  shape: BoxShape.circle,
                                  color: Colors.blueAccent),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 70, left: 65),
                              child: InkWell(
                                onTap: () async {
                                  xFileimg = await picker.pickImage(
                                      source: ImageSource.gallery);
                                  setState(() {

                                    stdList[index].img = File(xFileimg!.path);

                                  });
                                },
                                child: Icon(
                                  Icons.image_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        ListTile(

                            title: Container(
                              height: 322,
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                 ),
                              child: Column(

                                children: [
                                  buildTextFormField(
                                    name: 'name',
                                    controller1: stdList[index].name,
                                  ),
                                  buildTextFormField(
                                      name: 'id',
                                      controller1: stdList[index].id,),
                                  buildTextFormField(
                                      name: 'standard',
                                      controller1: stdList[index].standard,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              setState(() {
                                                stdList.removeAt(index);
                                              });
                                            }, icon: Icon(Icons.delete),
                                            ),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),

                      ],
                    ),
                  ),
                ]),

          ),
        ),
      ),

      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
            color: Colors.blueAccent,),
        child: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/detail');

             
            },
            icon: Icon(Icons.save,color: Colors.white,
            )),
      ),
    );
  }

  Widget buildTextFormField({
    required String name,

    TextEditingController? controller1,

  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller1,

        validator: (value) {
          if(value!.isEmpty){
            'fill must be reruired';
          }
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius:  BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius:  BorderRadius.circular(10)
          ),

          label: Text(name),
        ),
      ),
    );
  }
}
