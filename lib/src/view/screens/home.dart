import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



//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


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Center(child: Text('Hello ')),
          ],
        ),

      ),
    );
  }
}
