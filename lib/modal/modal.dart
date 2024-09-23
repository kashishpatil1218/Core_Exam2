import 'dart:io';

import 'package:flutter/material.dart';

String? name = '';
String? id = '';
String? std = '';
File? img;

List<StdList> StdDetail = [];
class StdList {
  TextEditingController? name;
  TextEditingController? id;
  TextEditingController? std;
  File? img;

  StdList(
      {required this.name, required this.id, required this.std, required this.img});
}