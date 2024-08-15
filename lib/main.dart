import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const url = 'https://mausam.imd.gov.in/Satellite/3Dasiasec_ir1.jpg';
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('SAT-VIEW'),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  radius: 2.5,
                  stops: [
                    0.0,
                    0.27,
                    1.0,
                  ],
                  colors: [
                    Color.fromARGB(255, 23, 183, 52),
                    Color.fromARGB(255, 23, 170, 183),
                    Color.fromARGB(255, 165, 162, 0),
                  ],
                ),
              ),
            ),
          ),
          body: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Color(0xff00f5a0), Color(0xff00d9f5)],
                stops: [0, 1],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
              margin: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: PhotoView(
                      imageProvider: const NetworkImage(
                          "https://mausam.imd.gov.in/Satellite/3Dasiasec_ir1.jpg",
                          scale: 4.0),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: PhotoView(
                      imageProvider: const NetworkImage(
                          "https://mausam.imd.gov.in/Satellite/3Dasiasec_ctbt.jpg",
                          scale: 4.0),
                    ),
                  )
                ],
              )),
        ));
  }
}
