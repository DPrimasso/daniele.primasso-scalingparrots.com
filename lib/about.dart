/**
 * Created by Mahmud Ahsan
 * https://github.com/mahmudahsan
 */
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:provaFlutter/drawer_menu.dart';
import 'package:provaFlutter/model/app_state.dart';
import 'package:provaFlutter/redux/reducers.dart';
import 'package:redux/redux.dart';

class About extends StatelessWidget {
  String text = "lorem(paragraphs: 3, words: 50);";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.teal,
      ),
      drawer: DrawerMenu(),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: StoreConnector<AppState, AppState>(
          converter: (store) => store.state,
          builder: (context, state) {
            return RichText(
              text: TextSpan(
                text: state.response,
                style: TextStyle(
                  fontSize: state.viewFontSize,
                  color: Colors.lightBlue,
                  fontWeight: state.bold ? FontWeight.bold : FontWeight.normal,
                  fontStyle: state.italic ? FontStyle.italic : FontStyle.normal,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
