import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var _text = ''; //state variable
  var _icon = null;

  Widget buildItem({
    //named parameter/argument
    required IconData icon, //required บังคับว่าต้องส่งมา
    required String label,
    Color color =
        Colors.black, //optional if null = black(defaut) / ? = can be null
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          // _text = Random().nextInt(100).toString();
          _icon = icon;
          _text = label;
        });
      },
      child: Container(
        width: 100.0,
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Icon(
              icon, // icon! = is not "null"
              color: color,
            ),
            Text(
              label,
              style: GoogleFonts.notoSansThai(
                color: color,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget buildTextWithBackground({
  @override
  Widget build(BuildContext context) {
    var itemList = [
      buildItem(icon: Icons.phone, label: "โทร", color: Colors.pink),
      buildItem(icon: Icons.near_me, label: "เส้นทาง", color: Colors.blue),
      buildItem(icon: Icons.share, label: "แชร์", color: Colors.green),
      buildItem(icon: Icons.person, label: "ฉัน", color: Colors.orange),
      // buildItem(icon: Icons.person, label: "ฉัน", color: Colors.orange)
    ];
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 16.0), //นิยม 16
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _text = "";
                    _icon = null;
                  });
                },
                child: Text("Clear")),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _icon,
                      size: 100.0,
                    ),
                    Text(
                      _text,
                      style: GoogleFonts.kanit(fontSize: 80.0),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: itemList
              //     [
              //   //collection-for ไม่ใช่ for statement
              //   for (var item in itemList) item,
              // ]
              // [
              // buildTextWithBackground(text: 'aaa', color: Colors.pinkAccent),
              // buildTextWithBackground(text: 'bbbbbbbbb', color: Colors.lime),
              // Spacer(flex: 2),
              // buildTextWithBackground(text: 'cccccc', color: Colors.yellow),
              // Spacer(flex: 1),
              // Expanded(child: SizedBox.shrink()),
              // Expanded(child: Center(child: Text("xxxxx"))),
              // buildTextWithBackground(text: 'dddd', color: Colors.lightBlue),
              // ElevatedButton(onPressed: () {}, child: Text("Go")),
              // ]
              ,
            ),
          ],
        ),
      ),
    );
  }
}
