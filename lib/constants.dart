import 'package:flutter/material.dart';
import 'package:tiktok_tutorial/views/screens/add_video_screen.dart';
import 'package:tiktok_tutorial/views/screens/video_screen.dart';

const pages = [
  VideoScreen(),
  Text('Pesquisar Screen'),
  AddVideoScreen(),
  Text('C.de entrada Screen'),
  Text('Perfil Screen'),
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = const Color.fromARGB(255, 238, 29, 82);
const borderColor = Color.fromARGB(255, 255, 255, 255);
