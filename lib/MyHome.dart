// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("go to Camera "),

      ),
      body: SingleChildScrollView(
        child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/camera");
        }, child: const Text("Go to the camera"),),
      ),
    );
  }
}