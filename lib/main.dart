import 'package:flutter/material.dart';
import 'package:banking_app_account_ui/screens/activity.dart';
import 'package:banking_app_account_ui/screens/home.dart';
import 'package:page_transition/page_transition.dart';
import 'package:banking_app_account_ui/screens/account.dart';
import 'package:banking_app_account_ui/screens/settings.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'imemi',
      theme: ThemeData(
        primaryColor: Color(0xFF015FFF),
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway',
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return PageTransition(child: HomeScreen(), type: PageTransitionType.fade);
          case '/activity':
            return PageTransition(child: Activity(), type: PageTransitionType.fade);
          case '/account':
            return PageTransition(child: AccountScreen(), type: PageTransitionType.fade);
          case '/settings':
            return PageTransition(child: Settings(), type: PageTransitionType.fade);
            break;
          default:
            return null;
        }
      },
    );
  }
}

