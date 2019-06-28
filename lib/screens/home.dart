import 'package:flutter/material.dart';
import 'package:banking_app_account_ui/components/app_drawer.dart';
import 'package:banking_app_account_ui/components/blue_box.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int _amount = 0; // Set this to show the borrow amount

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: AppDrawer(),
        appBar: AppBar(
//          leading: Builder(
//            builder: (context) => IconButton(
//              icon: Icon(Icons.wrap_text),
//              onPressed: () => Scaffold.of(context).openDrawer(),
//            ),
//          ),
          iconTheme: IconThemeData(
            color: Color(0xFF015FFF),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Lån",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                topArea('Hej, Navn', '499 kr. til rådighed'),
                displayInput(),
                Divider(),
                customKeyboard(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 4.0,
          icon: Icon(Icons.account_balance_wallet),
          label: Text('Lån'),
          backgroundColor: Color(0xFF015FFF),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  iconSize: 30.0,
                  icon: Icon(Icons.list),
                  tooltip: 'Aktivitet',
                  splashColor: Color(0xFF015FFF),
                  onPressed: () {
                    Navigator.pushNamed(context, '/activity');
                  }),
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.account_circle),
                tooltip: 'Konto',
                splashColor: Color(0xFF015FFF),
                onPressed: () {
                  Navigator.pushNamed(context, '/account');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  displayInput() {
    return Container(
      margin: EdgeInsets.only(top: 0.0, right: 5, left: 5),
      child: Container(
          padding:
              EdgeInsets.only(top: 0.0, bottom: 8.0, left: 40.0, right: 40.0),
          width: 250.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 250.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                      color: Color(0xFF015FFF),
                      width: 2.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    '$_amount',
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  child: Text(
                    'Ved lån accepterer du vores lånevilkår',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                  onTap: _launchURL,
                ),
              ),
            ],
          )),
    );
  }

  customKeyboard() {
    return Container(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 10, right: 0.0, bottom: 0, left: 0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                RaisedButton(
                  elevation: 4.0,
                  textColor: Colors.black,
                  color: Colors.white,
                  splashColor: Color(0xFF015FFF),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      String _number = '$_amount';
                      int _length = _number.length;
                      if (_length <= 2) {
                        _number =
                            '$_amount 1'.replaceAll(RegExp(r"\s+\b|\b\s"), "");
                        _amount = int.parse('$_number');
                        assert(_amount is int);
                      } else {
                        return null;
                      }
                    });
                  },
                ),
                RaisedButton(
                  elevation: 4.0,
                  textColor: Colors.black,
                  color: Colors.white,
                  splashColor: Color(0xFF015FFF),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "4",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      String _number = '$_amount';
                      int _length = _number.length;
                      if (_length <= 2) {
                        _number =
                            '$_amount 4'.replaceAll(RegExp(r"\s+\b|\b\s"), "");
                        _amount = int.parse('$_number');
                        assert(_amount is int);
                      } else {
                        return null;
                      }
                    });
                  },
                ),
                RaisedButton(
                  elevation: 4.0,
                  textColor: Colors.black,
                  color: Colors.white,
                  splashColor: Color(0xFF015FFF),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "7",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      String _number = '$_amount';
                      int _length = _number.length;
                      if (_length <= 2) {
                        _number =
                            '$_amount 7'.replaceAll(RegExp(r"\s+\b|\b\s"), "");
                        _amount = int.parse('$_number');
                        assert(_amount is int);
                      } else {
                        return null;
                      }
                    });
                  },
                ),
                RaisedButton(
                  elevation: 4.0,
                  textColor: Colors.black,
                  color: Colors.white,
                  splashColor: Color(0xFF015FFF),
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.backspace),
                  onPressed: () {
                    setState(() {
                      String _number = '$_amount';
                      int _length = _number.length;
                      if (_length == 1) {
                        _amount = 0;
                      } else {
                        int _tal = _length - 1;
                        _number = _number.substring(0, _tal);
                        _amount = int.parse('$_number');
                        assert(_amount is int);
                      }
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Column(
              children: <Widget>[
                RaisedButton(
                  elevation: 4.0,
                  textColor: Colors.black,
                  color: Colors.white,
                  splashColor: Color(0xFF015FFF),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      String _number = '$_amount';
                      int _length = _number.length;
                      if (_length <= 2) {
                        _number =
                            '$_amount 2'.replaceAll(RegExp(r"\s+\b|\b\s"), "");
                        _amount = int.parse('$_number');
                        assert(_amount is int);
                      } else {
                        return null;
                      }
                    });
                  },
                ),
                RaisedButton(
                  elevation: 4.0,
                  textColor: Colors.black,
                  color: Colors.white,
                  splashColor: Color(0xFF015FFF),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "5",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      String _number = '$_amount';
                      int _length = _number.length;
                      if (_length <= 2) {
                        _number =
                            '$_amount 5'.replaceAll(RegExp(r"\s+\b|\b\s"), "");
                        _amount = int.parse('$_number');
                        assert(_amount is int);
                      } else {
                        return null;
                      }
                    });
                  },
                ),
                RaisedButton(
                  elevation: 4.0,
                  textColor: Colors.black,
                  color: Colors.white,
                  splashColor: Color(0xFF015FFF),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "8",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      String _number = '$_amount';
                      int _length = _number.length;
                      if (_length <= 2) {
                        _number =
                            '$_amount 8'.replaceAll(RegExp(r"\s+\b|\b\s"), "");
                        _amount = int.parse('$_number');
                        assert(_amount is int);
                      } else {
                        return null;
                      }
                    });
                  },
                ),
                RaisedButton(
                  elevation: 4.0,
                  textColor: Colors.black,
                  color: Colors.white,
                  splashColor: Color(0xFF015FFF),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      String _number = '$_amount';
                      int _length = _number.length;
                      if (_length <= 2) {
                        _number =
                            '$_amount 0'.replaceAll(RegExp(r"\s+\b|\b\s"), "");
                        _amount = int.parse('$_number');
                        assert(_amount is int);
                      } else {
                        return null;
                      }
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Column(
              children: <Widget>[
                RaisedButton(
                  elevation: 4.0,
                  textColor: Colors.black,
                  color: Colors.white,
                  splashColor: Color(0xFF015FFF),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      String _number = '$_amount';
                      int _length = _number.length;
                      if (_length <= 2) {
                        _number =
                            '$_amount 3'.replaceAll(RegExp(r"\s+\b|\b\s"), "");
                        _amount = int.parse('$_number');
                        assert(_amount is int);
                      } else {
                        return null;
                      }
                    });
                  },
                ),
                RaisedButton(
                  elevation: 4.0,
                  textColor: Colors.black,
                  color: Colors.white,
                  splashColor: Color(0xFF015FFF),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "6",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      String _number = '$_amount';
                      int _length = _number.length;
                      if (_length <= 2) {
                        _number =
                            '$_amount 6'.replaceAll(RegExp(r"\s+\b|\b\s"), "");
                        _amount = int.parse('$_number');
                        assert(_amount is int);
                      } else {
                        return null;
                      }
                    });
                  },
                ),
                RaisedButton(
                  elevation: 4.0,
                  textColor: Colors.black,
                  color: Colors.white,
                  splashColor: Color(0xFF015FFF),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "9",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      String _number = '$_amount';
                      int _length = _number.length;
                      if (_length <= 2) {
                        _number =
                            '$_amount 9'.replaceAll(RegExp(r"\s+\b|\b\s"), "");
                        _amount = int.parse('$_number');
                        assert(_amount is int);
                      } else {
                        return null;
                      }
                    });
                  },
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0)),
                  elevation: 4.0,
                  textColor: Colors.white,
                  color: Color(0xFF015FFF),
                  splashColor: Colors.white70,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Ansøg",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://www.musaeus.dk';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
