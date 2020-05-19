import 'package:flutter/material.dart';
import 'package:warikankun/consts.dart';

class ContentCard extends StatelessWidget {
  ContentCard({this.title, this.child});
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
