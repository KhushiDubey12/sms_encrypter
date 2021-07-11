import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sms_encrypter/signin.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String firstname = "khushi";
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("T0uch"),
        // ),
        body: Stack(
      children: [
        Center(
          child: Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: RichText(
                text: TextSpan(
                    text: "Hi $firstname! ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 35),
                    children: [
                      TextSpan(children: [
                        TextSpan(
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 20),
                          text:
                             "Hi there!",
                        ),
                      ])
                    ]),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
  

