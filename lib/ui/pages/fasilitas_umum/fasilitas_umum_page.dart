// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FasilitasUmumPage extends StatelessWidget {
  const FasilitasUmumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Fasilitas Umum'),
        centerTitle: true,
        backgroundColor: Color(0xFF549558),
      ),
      body: Column(
        children: [
          Container(
            width: width,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Masjid / Musholla',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
