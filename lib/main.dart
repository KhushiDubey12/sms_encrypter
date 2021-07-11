import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:sms_encrypter/';
import 'constants.dart';
import 'package:sms_encrypter/signin.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Secure',
      theme: ThemeData(
        
        primarySwatch: Colors.deepPurple,
      ),
      routes: <String,WidgetBuilder>{
        SIGN_IN: (BuildContext context) => SignInPage()
      },
      initialRoute: SIGN_IN,
    );
  }
}
