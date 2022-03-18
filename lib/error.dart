import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // BoxDecoration myBoxDecoration() {
  //   return BoxDecoration(
  //     border: Border.all(),
  //   );
  // }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      
      backgroundColor: const Color(0xFFEFEFEF),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            // bottom: 200,
            left: 24,
            right: 24,
            child: Container(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                width: MediaQuery.of(context).size.height / 2,
                child: Image.asset('assets/images/error-removebg-preview.png')),
          ),
          Positioned(
            top: 250,
            bottom: 0,
            left: 24,
            right: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                const Text(
                  '404',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 60,
                      letterSpacing: 2,
                      color: const Color(0xff2f3640),
                      fontFamily: 'Anton',
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'OH FISH :(',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: const Color(0xff2f3640),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 450,
            bottom: 0,
            left: 24,
            right: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlue,
                      width: 8,
                    ), //Border.all
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ), //Offset
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.lightBlue,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),
                  child: Text(
                    'No such fish image is found in our database. You might have uploaded a wrong image or any another object.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 2,
                        color: const Color(0xff2f3640),
                        fontFamily: 'Anton',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
