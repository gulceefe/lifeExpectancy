import 'package:flutter/material.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState() ;
}

class _InputPageState extends State<InputPage> {
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
                      child: MyContainer(),
                    ),
                    Expanded(
                      child: MyContainer()
                    ),
                  ],
                ),

              ),
          Expanded(
            child:
            MyContainer()
          ),
          Expanded(
            child:
            MyContainer()
          ),
          Expanded(
            child:
            Row(
              children: [
                Expanded(
                  child: MyContainer(renk: Colors.purpleAccent,)
                ),
                Expanded(
                  child: MyContainer(renk: Colors.pink,)
                ),
              ],
            ),
          ),
            ],
          ),
        );
  }
}
class MyContainer extends StatelessWidget {
  final Color renk;
  MyContainer ({this.renk = Colors.white}); //renk yazılmadıysa default rengi beyaz olsun demiş olduk.

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: renk,
      ),
    );
  }
}