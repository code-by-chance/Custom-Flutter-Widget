import 'package:custom_flutter_widget/custom_buttom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
            child: CustomButtom(
          btnText: 'CodeDesignerWorld',
          onPressed: () {
            print('Button pressed');
          },
          borderColor: Colors.black,
          borderInsets: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          btnBgColor: Colors.transparent,
          txtColor: Colors.black,
          borderRadius: 20,
          borderWidth: 2,
          fontWeight: FontWeight.bold,
        )),
      ),
    );
  }
}
