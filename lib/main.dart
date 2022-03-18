import 'package:flutter/material.dart';
import 'package:sih/aboutus.dart';
import 'package:sih/home.dart';
import 'package:sih/photo.dart';
import 'package:sih/camera.dart';
import 'package:sih/photu.dart';
import 'package:sih/uploadfile.dart';

void main() {
  runApp(MaterialApp(
    home: MyStatefulWidget(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    home(),
    ImageUpload(),
    aboutus(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedFontSize: 15,
          selectedItemColor: Color(0xffcdc1ff),
          selectedIconTheme: IconThemeData(color: Color(0xffcdc1ff), size: 30),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color(0xFF21295c),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_enhance),
              label: 'Scan',
              backgroundColor: Color(0xFF21295c),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About Us',
              backgroundColor: Color(0xFF21295c),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}