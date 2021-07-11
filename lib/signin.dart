import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sms_encrypter/widgets/custom_shape.dart';
import 'package:sms_encrypter/widgets/responsive_ui.dart';
import 'package:sms_encrypter/home.dart';


class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInScreen(),
    );
  }
}

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late double _height;
  late double _width;
  late double _pixelRatio;
  late bool _large;
  late bool _medium;
  bool _v = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey();
  var _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  bool hidePassword = true;
  bool isApiCallProcess = false;
  // LoginRequestModel loginRequestModel;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // @override
  // void initState() {
  //   super.initState();
  //   loginRequestModel = new LoginRequestModel();
  // }
  // get http => null;
  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    return Material(
        child: Container(
      height: _height,
      width: _width,
      padding: EdgeInsets.only(bottom: 5),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
               Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.75,
                    child: ClipPath(
                      clipper: CustomShapeClipper(),
                      child: Container(
                        height: _large
                            ? _height / 4
                            : (_medium ? _height / 3.75 : _height / 3.5),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blueAccent],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: ClipPath(
                      clipper: CustomShapeClipper2(),
                      child: Container(
                        height: _large
                            ? _height / 4.5
                            : (_medium ? _height / 4.25 : _height / 4),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blueAccent],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(
                        top: _large
                            ? _height / 30
                            : (_medium ? _height / 25 : _height / 20)),
                    // child: Image.asset(
                    //   'assets/images/login.png',
                    //   height: _height / 3.5,
                    //   width: _width / 3.5,
                    // ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: _width / 20, top: _height / 100),
                child: Row(
                  children: <Widget>[
                    Text(
                      " Welcome To Crypto Secure!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: _large ? 40 : (_medium ? 30 : 25),
                      ),
                    ),
                  ],
                ),
              )    ,         
               Container(
                margin: EdgeInsets.only(left: _width / 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Enter Your Email Id:",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: _large ? 20 : (_medium ? 17.5 : 15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              ElevatedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                        Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                    
                    });
                    // formFieldText
                  }
                )
              ]
            )
          )
        )
      )
    );          
  }
}
  
