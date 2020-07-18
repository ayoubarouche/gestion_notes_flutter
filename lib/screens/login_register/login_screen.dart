import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gestion_notes/widgets.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Theme.of(context).primaryColor, Colors.white],
                    stops: [0.5, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      InputInformation('الاميل', 'ادخل الاميل',email_controller,Icon(Icons.email,color: Colors.white,)),
                      SizedBox(
                        height: 30.0,
                      ),
                      PasswordTF(password_controller),
                      LoginBtn('تسجيل الدخول',()=>Navigator.pushNamed(context, '/accountNotActivatedYet')),
                      OtherChoice('ليس لديك حساب ؟ ', 'انشاء حساب', () {
                        if (Navigator.canPop(context)) Navigator.pop(context);
                        Navigator.pushNamed(context, '/register');
                      }),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
     
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    email_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }
}
