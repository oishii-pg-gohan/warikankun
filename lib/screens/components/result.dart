import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:warikankun/screens/state/app_state.dart';

final formatter = NumberFormat("#,###");

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int result = Provider.of<AppState>(context).result;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Text(
        '￥ ${formatter.format(result)}',
        style: TextStyle(fontSize: 60.0),
      ),
    );
  }
}
