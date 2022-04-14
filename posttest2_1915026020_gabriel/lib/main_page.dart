import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heigt = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffEDF2F4),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: heigt / 4),
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/Palang.png")),
                ),
              ),
              const Text(
                "AYO DONOR",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD80032),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 70, right: 70, top: 10),
                child: Text(
                  "Aplikasi Screening untuk pendonor darah sebelum melakukan pendonoran darah \n by Gabriel D Lawrence",
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff8d99ae),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const MyButton(),
            ],
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200),
      width: 215,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xffef233c),
      ),
      child: const Text(
        "Start Screening",
        style: TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w600,
          color: Color(0xffEDF2F4),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
