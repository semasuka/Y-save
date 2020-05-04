import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //TO AVOID KEYBOARD OVERFLOWED
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 1],
              colors: [
                Color(0xff8E2DE2),
                Color(0xff4a00e0),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // LOGO ICON
                Icon(
                  Icons.blur_on,
                  size: 150.0,
                  color: Colors.white,
                ),
                // COMPANY NAME
                Center(
                  child: Text(
                    'Y \$ave?',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  ),
                ),
                // MOTO
                Center(
                  child: Text(
                    'Wealth made simple',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                    ),
                  ),
                ),
                // CARD CONTAINER
                Container(
                  // CARD BOX SHADOW
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 30.0,
                      offset: Offset(0.0, 15.0),
                    ),
                  ]),
                  child: Card(
                    // CARD RADIUS
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    // CARD MARGIN
                    margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0),
                    child: Column(children: <Widget>[
                      // EMAIL TEXT FIELD
                      Container(
                        width: 320.0,
                        child: Theme(
                          child: Padding(
                            // PADDING OF THE EMAIL TEXT FIELD FORM
                            padding: EdgeInsets.fromLTRB(0, 35, 0, 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[100],
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey[100],
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40.0),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(40.0),
                                    )),
                                prefixIcon: Icon(
                                  Icons.email,
                                ),
                                labelText: 'Email',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          //FOCUS COLOR CHANGE
                          data: Theme.of(context).copyWith(
                            primaryColor: Color.fromRGBO(140, 140, 140, 1),
                          ),
                        ),
                      ),
                      // PASSWORD TEXT FIELD
                      Container(
                        width: 320.0,
                        child: Theme(
                          child: Padding(
                            // BOTTOM PADDING OF THE PASSWORD TEXT FIELD FORM
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[100],
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey[100],
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40.0),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(40.0),
                                    )),
                                prefixIcon: Icon(
                                  Icons.lock,
                                ),
                                // SHOW/HIDE PASSWORD ****** REQUIRE IMPLEMENTATION
                                suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                ),
                                labelText: 'Password',
                              ),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                          ),
                          data: Theme.of(context).copyWith(
                            primaryColor: Color.fromRGBO(140, 140, 140, 1),
                          ),
                        ),
                      ),
                      // FORGOT YOUR PASSWORD BUTTON **** REQUIRE IMPLEMENTATION
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                              //DO SOMETHING
                            },
                            child: Text(
                              'Forgot Password?',
                            ),
                            splashColor: Color.fromRGBO(140, 140, 140, 0.15),
                            textColor: Color.fromRGBO(140, 140, 140, 0.8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //LOG IN BUTTON
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {
                              //DO SOMETHING
                            },
                            child: Text(
                              'LOGIN',
                            ),
                            elevation: 10.0,
                            padding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 30.0),
                            splashColor: Color(0xff2a0080),
                            highlightElevation: 0,
                            textColor: Colors.white,
                            color: Color(0xff4a00e0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SIGN UP BUTTON
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RaisedButton(
                              onPressed: () {
                                //DO SOMETHING
                              },
                              child: Text(
                                'SIGN UP',
                              ),
                              color: Colors.white,
                              textColor: Color(0xff4a00e0),
                              elevation: 10.0,
                              padding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 24.0),
                              highlightElevation: 0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Color(0xff4a00e0),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
