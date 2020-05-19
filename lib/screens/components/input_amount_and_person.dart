import 'package:flutter/material.dart';
import 'package:warikankun/screens/components/label.dart';
import 'package:warikankun/screens/components/text_field.dart';

class InputAmountAndPerson extends StatelessWidget {
  InputAmountAndPerson({this.onChangeAmount, this.onChangePerson});
  final Function onChangeAmount;
  final Function onChangePerson;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Label(text: '￥'),
        Expanded(
          flex: 4,
          child: NumberTextField(
            onChanged: onChangeAmount,
          ),
        ),
        Icon(Icons.supervisor_account),
        Expanded(
          flex: 1,
          child: NumberTextField(
            onChanged: onChangePerson,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Label(text: '人'),
        ),
      ],
    );
  }
}
