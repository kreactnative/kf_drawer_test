import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

class MainPage extends KFDrawerContent {
  MainPage({
    Key key,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Main"),
        leading: GestureDetector(
          onTap: () {
            widget.onMenuPressed();
          },
          child: Icon(
            Icons.menu, // add custom icons also
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Main'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
