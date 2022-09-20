import 'package:flutter/material.dart';

import '../widgets/CustomBotton.dart';
import 'readqr.dart';
import 'scanqr.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],

        elevation: 0,
        title: Text(
          'Home',
          style: TextStyle(fontSize: 28, color: Colors.black),
        ),
        centerTitle: true,
        // backgroundColor: ,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CustomBotton(
                color: Color(0xff0353a4),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => CreateScreen()));
                },
                text: 'create QR code'),
            SizedBox(
              height: 20,
            ),
            CustomBotton(
                color: Color(0xff006494),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => ScanScreen()));
                },
                text: 'Read QR code'),
          ],
        ),
      ),
    );
  }
}
