import 'package:flutter/material.dart';
import 'package:banking_app_account_ui/components/app_drawer.dart';
import 'package:banking_app_account_ui/components/blue_box.dart';


class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color(0xFF015FFF),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Aktivitet",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: RefreshIndicator(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  topArea('Mine Lån', '500 kr.'),
                  displayAccountList(),
                ],
              ),
            ),
          ),
          onRefresh: _handleRefresh,
        ),

        floatingActionButton: FloatingActionButton.extended(
          elevation: 4.0,
          icon: const Icon(Icons.account_balance_wallet),
          label: const Text('Lån'),
          backgroundColor: Color(0xFF015FFF),
          onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(

          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.list),
                iconSize: 30.0,
                tooltip: 'Aktivitet',
                color: Color(0xFF015FFF),
                splashColor: Color(0xFF015FFF),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.account_circle),
                iconSize: 30.0,
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

  Container accountItems(
      String item, String charge, String dateString, String type,
      {Color oddColour = Colors.white}) =>
      Container(
        decoration: BoxDecoration(color: oddColour),
        padding:
        EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(item, style: TextStyle(fontSize: 16.0)),
                Text(charge, style: TextStyle(fontSize: 16.0))
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dateString,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                Text(type, style: TextStyle(color: Colors.grey, fontSize: 14.0))
              ],
            ),
          ],
        ),
      );

  displayAccountList() {
    return Container(
      margin: EdgeInsets.only(top: 15.0, right: 5, left: 5),
      child: Column(
        children: <Widget>[
          accountItems("Udbetaling", r"+ 100 kr.", "17-01-19", "DKK",
              oddColour: const Color(0xFFF7F7F9)),
          accountItems(
              "Udbetaling", r"+ 200 kr.", "14-01-19", "DKK"),
          accountItems("Udbetaling", r"+ 200 kr.", "09-01-19", "DKK",
              oddColour: const Color(0xFFF7F7F9)),
          accountItems(
              "Indbetaling", r"- 37 kr.", "17-12-18", "DKK"),
          accountItems(
              "Udbetaling", r"+ 37 kr.", "17-12-18", "DKK",
              oddColour: const Color(0xFFF7F7F9)),
        ],
      ),
    );
  }

  Future<void> _handleRefresh() async {
    return null;
  }
}