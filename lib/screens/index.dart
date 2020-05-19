import 'package:flutter/material.dart';
import 'package:warikankun/screens/components/all.dart';
import 'package:warikankun/screens/components/content_card.dart';
import 'package:warikankun/screens/components/fixed_list.dart';
import 'package:warikankun/screens/components/result.dart';

///
/// Main screen
///
class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

///
/// Main screen state
///
class _IndexState extends State<Index> {
  int all = 0;
  int allNum = 0;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Expanded(child: Center(child: Expanded(child: Text('aaa')))),
            ContentCard(
              title: 'ひとりあたり',
              child: Result(),
            ),
            ContentCard(
              title: 'きんがく と にんずう の ごうけい',
              child: All(),
            ),
            SizedBox(
              height: 3.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ContentCard(
                      title: 'こてい の きんがく',
                      child: FixedList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
