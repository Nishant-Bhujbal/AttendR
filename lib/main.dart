import 'package:attendr/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'QRScannerOverlay.dart';
import 'package:attendr/HomeScreen.dart';
import 'package:attendr/Accept.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/', 
    routes: {
      '/' : ((context) => SignUpPage()),
      '/home' : ((context) => const MyHomePage()),
      '/accept' :((context) => const Accept()),
    },
  ));
}


