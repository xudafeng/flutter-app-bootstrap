import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import '../constants.dart' as CONSTANTS;
import '../utils.dart' as Utils;

class LogoutComponent extends StatelessWidget {
  LogoutComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String os = Platform.operatingSystem;
    String osString = '${os[0].toUpperCase()}${os.substring(1)}';
    return new Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$osString Flutter Bootstrap',
            style: new TextStyle(fontSize: 20.0, color: Colors.black),
          ),
          new Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 80.0),
              decoration: new BoxDecoration(
                color: Color(Utils.getColorHexFromStr(CONSTANTS.COLOR_1)),
                borderRadius: new BorderRadius.circular(4.0),
              ),
              child: FlatButton(
                  child: Text(
                    'Logout',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: Color(Utils.getColorHexFromStr('#ffffff'))),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  }))
        ],
      ),
    );
  }
}
