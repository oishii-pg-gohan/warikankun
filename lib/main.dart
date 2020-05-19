import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warikankun/consts.dart';
import 'package:warikankun/screens/index.dart';
import 'package:warikankun/screens/state/app_state.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppState>(
      create: (_) => AppState(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          accentColor: kColorPrimary,
          buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.dark().copyWith(
              primary: kColorPrimary,
            ),
          ),
          textSelectionColor: kColorPrimary,
          textSelectionHandleColor: kColorPrimary,
          inputDecorationTheme: InputDecorationTheme(),
          cursorColor: kColorPrimary,
        ),
        home: Index(),
      ),
    ),
  );
}
