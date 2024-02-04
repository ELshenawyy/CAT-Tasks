import 'dart:async';

import 'package:api_bloc_clean/src/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyData {
  final String description;
  final String title;
  final String imageUrl;

  MyData(
      {required this.description, required this.title, required this.imageUrl});
}

class PView extends StatefulWidget {
  const PView({Key? key}) : super(key: key);

  @override
  State<PView> createState() => _PViewState();
}

class _PViewState extends State<PView> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentIndex = 0;
  List myData = [
    MyData(
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      title: "PAGE VIEW1",
      imageUrl: "images/splash_view_second_screen.jpg",
    ),
    MyData(
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      title: "PAGE VIEW2",
      imageUrl: "images/splash_screen.jpg",
    ),
    MyData(
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      title: "PAGE VIEW3",
      imageUrl: "images/splash_view_third_screen.jpg",
    ),
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_currentIndex < 2) _currentIndex++;

      _controller.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/a': (ctx) => const SplashScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Builder(
              builder: (ctx) => PageView(
                controller: _controller,
                children: myData
                    .map(
                      (item) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage(item.imageUrl),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                              ),
                              Text(
                                item.description,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20,
                                    color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Opacity(
                                opacity: 0.9,
                                child: Text(
                                  item.title,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onPageChanged: (val) {
                  setState(() {
                    _currentIndex = val;
                    /* if (_currentIndex == 3) {
                      Future.delayed(const Duration(seconds: 2),
                          () => Navigator.of(ctx).pushNamed('/a'));
                    }*/
                  });
                },
              ),
            ),
            Indicator(_currentIndex),
            Builder(
              builder: (ctx) => Align(
                alignment: const Alignment(0, 0.92),
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(6),
                    color: Colors.red,
                    child: const Text(
                      "GET STARTED",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    onPressed: () async {
                      Navigator.of(ctx).pushNamed('/a');
                      SharedPreferences pref =
                          await SharedPreferences.getInstance();
                      pref.setBool('x', true);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int index;

  const Indicator(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildContainer(index == 0 ? Colors.green : Colors.red),
          buildContainer(index == 1 ? Colors.green : Colors.red),
          buildContainer(index == 2 ? Colors.green : Colors.red),
        ],
      ),
    );
  }

  Container buildContainer(Color color) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 20,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
