import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'mycolumn.dart';
import 'mycontainer.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double icilenSigara = 0.0;
  double sporYapilanGun = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: Row(
                      children: [
                        new RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            'BOY',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        new RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            '170',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Column(),
                      ],
                    ),
                  ),
                ),
                Expanded(child: MyContainer(child: Column())),
              ],
            ),
          ),
          Expanded(
              child: MyContainer(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Haftada Kaç Gün Spor Yapıyorsunuz?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '${sporYapilanGun.round()}',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 18,
                ),
              ),
              Slider(
                  min: 0.0,
                  max: 7.0,
                  divisions: 7,
                  value: sporYapilanGun,
                  onChanged: (double newValue) {
                    setState(() {
                      sporYapilanGun = newValue;
                    });
                  })
            ],
          ))),
          Expanded(
              child: MyContainer(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Günde Kaç Sigara İçiyorsunuz?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '${icilenSigara.round()}',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 18,
                ),
              ),
              Slider(
                  min: 0,
                  max: 30,
                  divisions: 30,
                  value: icilenSigara,
                  onChanged: (double newValue) {
                    setState(() {
                      icilenSigara = newValue;
                    });
                  })
            ],
          ))),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    renk:
                        seciliCinsiyet == 'KADIN' ? Colors.green : Colors.white,
                    onPressxx: () {
                      setState(() {
                        seciliCinsiyet = 'KADIN';
                      });
                    },
                    child: MyColumn(
                        cinsiyet: 'KADIN', ikon: FontAwesomeIcons.venus),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                      onPressxx: () {
                        setState(() {
                          seciliCinsiyet = 'ERKEK';
                        });
                      },
                      renk: seciliCinsiyet == 'ERKEK'
                          ? Colors.green
                          : Colors.white,
                      child: MyColumn(
                          cinsiyet: 'ERKEK', ikon: FontAwesomeIcons.mars)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
