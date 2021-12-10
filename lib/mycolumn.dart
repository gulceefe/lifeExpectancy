import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lifeexpectancy/sabitler.dart';

class MyColumn extends StatelessWidget {
  final String cinsiyet;
  final IconData ikon;


  MyColumn({this.cinsiyet ='Default', this.ikon = FontAwesomeIcons.play});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(ikon, size: 60, color: Colors.black),
        SizedBox(height: 10),
        Text(cinsiyet, style: kMetinStili,
        ),
      ],
    );
  }
}