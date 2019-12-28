import 'package:flutter/material.dart';
import 'package:xlo/screens/home/home.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomeScreen(),
          Container(color: Colors.blue),
          Container(color: Colors.green),
          Container(color: Colors.grey),
          Container(color: Colors.purple),
        ],
      ),
    );
  }
}
