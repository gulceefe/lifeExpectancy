import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lifeexpectancy/sabitler.dart';

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
  int boy = 170;
  int kilo = 60;
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
                    child: buildRowOutlineButton('BOY'),
                  ),
                ),
                Expanded(child: MyContainer(
                    child: buildRowOutlineButton('KİLO'),
                ),
                ),
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
                style: kMetinStili,
              ),
              SizedBox(height: 10),
              Text(
                '${sporYapilanGun.round()}',
                style: kMaviMetinStili,
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
                style: kMetinStili,
              ),
              SizedBox(height: 10),
              Text(
                '${icilenSigara.round()}',
                style: kMaviMetinStili,
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

  Row buildRowOutlineButton(String label) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          label,
                          style: kMetinStili,
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      new RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          label=='BOY' ? boy.toString() : kilo.toString(), // ya da boy.toString() yazabilirdik.
                          style: kMaviMetinStili,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  label == 'BOY' ? boy++ : kilo++ ;
                                  print('Üstteki butona tıklandı');
                                });
                              },
                              child: Icon(FontAwesomeIcons.plus, size: 10),
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  label == 'BOY' ? boy-- : kilo--;
                                  print('Alttaki butona tıklandı');
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
  }
}
