import 'dart:io';

import 'package:flutter/cupertino.dart';

String? name = '';
String? id = '';
String? standard = '';
File? img;

List<modal> stdList = [];
class modal {
  TextEditingController? name;
  TextEditingController? id;
  TextEditingController? standard;
  File? img;

  modal(
      {required this.name, required this.id, required this.standard, this.img});
}