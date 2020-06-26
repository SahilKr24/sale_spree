import 'package:flutter/material.dart';
import 'package:sale_spree/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'On Watch Stuff',
                    style: TextStyle(
                        color: Color(0xFF333366),
                        fontFamily: kFontStyle,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                    child: Container(
                    padding: EdgeInsets.fromLTRB(15.0, 155.0, 0.0, 0.0),
                    child: Icon(Icons.airplanemode_active,
                    size: 35),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
