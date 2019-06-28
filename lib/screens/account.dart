import 'package:flutter/material.dart';
import 'package:banking_app_account_ui/components/app_drawer.dart';
import 'package:banking_app_account_ui/components/blue_box.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreen createState() => _AccountScreen();
}

class _AccountScreen extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: AppDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color(0xFF015FFF),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Konto",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: getListView(),

        floatingActionButton: FloatingActionButton.extended(
          elevation: 4.0,
          icon: Icon(Icons.account_balance_wallet),
          label: Text('Lån'),
          backgroundColor: Color(0xFF015FFF),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.list),
                  iconSize: 30.0,
                  tooltip: 'Aktivitet',
                  splashColor: Color(0xFF015FFF),
                  onPressed: () {
                    Navigator.pushNamed(context, '/activity');
                  }),
              IconButton(
                icon: Icon(Icons.account_circle),
                iconSize: 30.0,
                tooltip: 'Konto',
                color: Color(0xFF015FFF),
                splashColor: Color(0xFF015FFF),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      Container(
        alignment: Alignment.center,
        child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: Color(0xFF015FFF),
                width: 2.0,
                style: BorderStyle.solid
            ),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/portrait.png')
            ),
          ),
        ),
      ),
      Container(
        child: Text(
          'Velkommen, Navn',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(
          Icons.info,
          color: Color(0xFF015FFF),
        ),
        title: Text('Fulde Navn'),
        subtitle: Text('Malthe Have Musaeus'),
        trailing: Icon(
          Icons.edit,
          color: Colors.black,
        ),
        onTap: () {},
      ),
      Divider(),
      ListTile(
        leading: Icon(
          Icons.portrait,
          color: Color(0xFF015FFF),
        ),
        title: Text('Køn'),
        subtitle: Text('Mand'),
        trailing: Icon(
          Icons.edit,
          color: Colors.black,
        ),
        onTap: () {},
      ),
      Divider(),
      ListTile(
        leading: Icon(
          Icons.date_range,
          color: Color(0xFF015FFF),
        ),
        title: Text('Fødsels Dato'),
        subtitle: Text('17-12-01'),
        trailing: Icon(
          Icons.edit,
          color: Colors.black,
        ),
        onTap: () {},
      ),
      Divider(),
      ListTile(
        leading: Icon(
          Icons.credit_card,
          color: Color(0xFF015FFF),
        ),
        title: Text('Betalings Kort'),
        subtitle: Text('**** **** **** 1234'),
        trailing: Icon(
          Icons.edit,
          color: Colors.black,
        ),
        onTap: () {},
      ),
      Divider(),
      Container(
        padding: EdgeInsets.only(top: 0.0, bottom: 50.0,),
        child: InkWell(
          child: Text(
            'Leder du efter indstillinger?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
            ),
          ),
          splashColor: Colors.white,
          highlightColor: Colors.white,
          onTap:() {},
        ),
      ),
    ],
  );
  return listView;
}