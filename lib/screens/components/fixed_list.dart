import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warikankun/screens/components/input_amount_and_person.dart';
import 'package:warikankun/screens/components/label.dart';
import 'package:warikankun/screens/state/app_state.dart';

class FixedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: _buildFixeds(context),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: RaisedButton(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'ついか',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            onPressed: () =>
                Provider.of<AppState>(context, listen: false).addFixed(),
          ),
        ),
      ],
    );
  }

  List<Fixed> _buildFixeds(BuildContext context) {
    List<Fixed> list = [];
    for (int i = 0; i < Provider.of<AppState>(context).fixedCnt; i++) {
      list.add(Fixed(
        idx: i,
      ));
    }

    return list;
  }
}

class Fixed extends StatelessWidget {
  Fixed({@required this.idx});
  final int idx;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          Label(text: 'ぐるーぷ${idx + 1}'),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InputAmountAndPerson(
                onChangeAmount: (value) =>
                    Provider.of<AppState>(context, listen: false)
                        .updateFixedAmount(idx, int.parse(value)),
                onChangePerson: (value) =>
                    Provider.of<AppState>(context, listen: false)
                        .updateFixedPerson(idx, int.parse(value)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
