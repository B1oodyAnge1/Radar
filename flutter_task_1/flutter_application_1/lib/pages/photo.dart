import 'package:flutter/material.dart';

class MyPhoto extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final screenTitle;
  // ignore: prefer_typing_uninitialized_variables
  final nameThisPic;
  const MyPhoto(
      {super.key, required this.screenTitle, required this.nameThisPic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nameThisPic),
      ),
      body: Ink.image(
        image: AssetImage(
          screenTitle,
        ),
        fit: BoxFit.contain,
      ),
    );
  }
}
