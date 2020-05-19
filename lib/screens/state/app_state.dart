import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  int _all = 0;
  int _allPerson = 0;
  int _result = 0;

  List<Data> _fixedList = [];

  int get all {
    return _all;
  }

  int get allPerson {
    return _allPerson;
  }

  int get result {
    return _result;
  }

  int get fixedCnt {
    return _fixedList.length;
  }

  updateAll(int all) {
    _all = all;
    updateResult();
  }

  updateAllPerson(int allPerson) {
    _allPerson = allPerson;
    updateResult();
  }

  updateResult() {
    if (_all == 0 || _allPerson == 0) {
      _result = 0;
    } else {
      try {
        int allFixed = 0;
        int personFixed = 0;
        for (Data data in _fixedList) {
          allFixed += data.sum;
          personFixed += data.person;
        }

        int newAll = _all - allFixed;
        int newPerson = _allPerson - personFixed;
        double result = newAll / newPerson;
        _result = (double.parse(result.toStringAsFixed(1))).ceil();
      } catch (e) {
        _result = 0;
      }
    }
    notifyListeners();
  }

  addFixed() {
    _fixedList.add(Data());
    notifyListeners();
  }

  updateFixedAmount(int idx, int amount) {
    Data data = _fixedList[idx];
    data.updateAmount(amount);
    notifyListeners();

    updateResult();
  }

  updateFixedPerson(int idx, int person) {
    Data data = _fixedList[idx];
    data.updatePerson(person);

    updateResult();
  }
}

class Data {
  int amount = 0;
  int person = 0;
  int sum = 0;

  updateAmount(int value) {
    amount = value;
    updateSum();
  }

  updatePerson(int value) {
    person = value;
    updateSum();
  }

  updateSum() {
    sum = amount * person;
  }
}
