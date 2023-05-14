
import 'package:flutter/material.dart';

void main() => runApp( const WelcomePage());
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
home: Scaffold(
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 500,
            width: 400,
            child: Image(image: AssetImage("assets/Register2.png"),)
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Text("Welcome :)", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50), ),
        )
      ],
    ),
  ),
),
    );
  }
}


