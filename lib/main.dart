import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'QRScannerOverlay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendr',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MobileScannerController cameraController = MobileScannerController();
  List<String?> qrData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendr'),
        actions: [
          IconButton(
              onPressed: () {
                cameraController.switchCamera();
              },
              icon: Icon(Icons.camera_rear_outlined)),
        ],
      ),
      body: Stack(
        children: [
          MobileScanner(
              allowDuplicates: false,
              controller: cameraController,
              onDetect: (barcode, args) {
                String? code = barcode.rawValue;
                qrData.add(code);
                debugPrint('Barcode found! $code');
                print("This is list data $qrData");
              }),
          QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.5)),
        ],
      ),
    );
  }
}
