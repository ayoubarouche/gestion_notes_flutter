import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gestion_notes/widgets.dart';

class AccountNotVerifiedYetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  height: double.infinity,
                ),
                Container(
                    height: double.infinity,
                    //    padding: EdgeInsets.only(top: 300),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50.0,
                        ),
                        Image.asset('assets/sad_face.png'),
                        SizedBox(
                          height: 10,
                        ),
                        ErreurMessageForAllTheScreen(
                            'نعتذر حسابك لم يتم تفعيله بعد من طرف الادارة')
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
