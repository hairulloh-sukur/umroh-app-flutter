// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'dart:math' as math;

class ArahKiblatPage extends StatefulWidget {
  const ArahKiblatPage({Key? key}) : super(key: key);

  @override
  _ArahKiblatPageState createState() => _ArahKiblatPageState();
}

class _ArahKiblatPageState extends State<ArahKiblatPage> {
  double _direction = 0;

  @override
  void initState() {
    super.initState();
    _getDirection();
  }

  void _getDirection() {
    FlutterCompass.events!.listen((direction) {
      setState(() {
        _direction = direction.heading!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ARAH KIBLAT',
          style: TextStyle(
            color: Color(0xFF2D4F2F),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 75,
        elevation: 2,
        iconTheme: IconThemeData(
          color: Color(0xFF2D4F2F), //change your color here
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    // *Kiblat
                    Transform.rotate(
                      angle: ((_direction != 0 ? _direction + 65 : 0) *
                          (math.pi / 180) *
                          -1),
                      child:
                          Image.asset('assets/images/arah_kiblat/Kiblat.png'),
                    ),

                    // *Kompas
                    Transform.rotate(
                      angle: ((_direction != 0 ? _direction : 0) *
                          (math.pi / 180) *
                          -1),
                      child:
                          Image.asset('assets/images/arah_kiblat/Kompas.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // *Rubah dengan BottomBar
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
                width: width,
                height: 50,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                    child: Text(
                      'Bottom Bar',
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
