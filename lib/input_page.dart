import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'mycolumn.dart';
import 'mycontainer.dart';
class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState() ;
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:
        Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child:
                Row(
                  children: [
                    Expanded(
                      child: MyContainer(child: Column()),
                    ),
                    Expanded(
                      child: MyContainer(child: Column())
                    ),
                  ],
                ),

              ),
          Expanded(
            child:
            MyContainer(child: Row())
          ),
          Expanded(
            child:
            MyContainer(child: Row())
          ),
          Expanded(
            child:
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        seciliCinsiyet = 'KADIN';
                      });

                    },
                    child: MyContainer(
                      renk: seciliCinsiyet=='KADIN'?Colors.purple : Colors.black26,
                        child: MyColumn(cinsiyet: 'KADIN', ikon: FontAwesomeIcons.venus),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        seciliCinsiyet = 'ERKEK';
                      });
                    },
                    child: MyContainer(
                      renk: seciliCinsiyet=='ERKEK'?Colors.green : Colors.white,
                      child: MyColumn(cinsiyet: 'ERKEK', ikon: FontAwesomeIcons.mars)
                    ),
                  ),
                ),
              ],
            ),
          ),
            ],
          ),
        );
  }
}


