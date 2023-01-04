import 'package:flutter/material.dart';

class story extends StatefulWidget {
  const story({Key? key}) : super(key: key);

  @override
  State<story> createState() => _storyState();
}

class _storyState extends State<story> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        height: h,
        width: w,
        child: Image(
          image: AssetImage("images/abc.gif"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
