import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  final scorewin;
  Resultscreen({Key? key, required this.scorewin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'مشاهده نتیجه آزمون',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage('images/cup.png'),
              ),
            ),
            Text(
              ':تعداد جواب صحیح شما',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Text(
              '$scorewin',
              style: TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
