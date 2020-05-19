import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warikankun/screens/components/input_amount_and_person.dart';
import 'package:warikankun/screens/state/app_state.dart';

class All extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, left: 60.0, right: 60.0),
      child: Container(
        child: InputAmountAndPerson(
          onChangeAmount: (value) =>
              Provider.of<AppState>(context, listen: false).updateAll(
            int.parse(value),
          ),
          onChangePerson: (value) =>
              Provider.of<AppState>(context, listen: false).updateAllPerson(
            int.parse(value),
          ),
        ),
      ),
    );
  }
}
