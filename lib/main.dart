import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:provaFlutter/about.dart';
import 'package:provaFlutter/home.dart';
import 'package:provaFlutter/model/app_state.dart';
import 'package:provaFlutter/redux/reducers.dart';
import 'package:provaFlutter/settings.dart';
import 'package:redux/redux.dart';

void main() {
  final _initialState = AppState(sliderFontSize: 0.5, response: "initial response");
  final Store<AppState> _store =
  Store<AppState>(reducer, initialState: _initialState);

  print("_store.state.response");
  print(_store.state.response);
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => About(),
          '/settings': (context) => Settings(),
        },
      ),
    );
  }
}