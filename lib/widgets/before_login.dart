import 'package:flutter/material.dart';
import 'package:gestion_notes/widgets.dart';

//image de l'arriere plan il faut l'uiliser avec un stack pour bien positioné les widget
Widget BackgroundImage() {
  return Image.asset(
    'assets/backgroun_image.jpg',
    fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.center,
  );
}

// le message principal
Widget HelloMessage(BuildContext context, String text) {
  return Container(
    width: MediaQuery.of(context).size.width / 2 + 100,
    child: Text(
      text,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 50,
          decoration: TextDecoration.none),
    ),
  );
}


//button pour la creation d'un compte dans le quelle le color d'arriere plan et du color primaire
Widget CreateAccountButton(BuildContext context, String text, Function onTap) {
  return FlatButton(
      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
      onPressed: onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30.0),
      ));
}

//button pour le login il est pas de color au milieu
Widget LoginButton(BuildContext context, String text, Function onTap) {
  return OutlineButton(
      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
      borderSide: BorderSide(color: Theme.of(context).primaryColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      highlightColor: Theme.of(context).primaryColor,
      highlightedBorderColor: Colors.white,
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(fontSize: 20.0),
      ));
}

//le text field pour les autre information comme l'email not etc...
Widget InputInformation(String infoName, String hintText,
    TextEditingController controller, Icon icon) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Text(
        infoName,
        style: kLabelStyle,
        textDirection: TextDirection.rtl,
      ),
      SizedBox(height: 10.0),
      Container(
        alignment: Alignment.centerRight,
        decoration: kBoxDecorationStyle,
        height: 60.0,
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: icon,
            hintText: hintText,
            hintStyle: kHintTextStyle,
          ),
        ),
      ),
    ],
  );
}

//le text field du mot de pass
Widget PasswordTF(TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Text(
        'كلمة السر',
        style: kLabelStyle,
      ),
      SizedBox(height: 10.0),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 60.0,
        child: TextField(
          controller: controller,
          obscureText: true,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            hintText: 'ادخل كلمة السر',
            hintStyle: kHintTextStyle,
          ),
        ),
      ),
    ],
  );
}

//si le mot de passe et perdus
Widget ForgotPasswordBtn() {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: () => print('Forgot Password Button Pressed'),
      padding: EdgeInsets.only(right: 0.0),
      child: Text(
        'Forgot Password?',
        style: kLabelStyle,
      ),
    ),
  );
}

//apres le click sur login ou enregistrer button
Widget LoginBtn(String text,Function onTap) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25.0),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5.0,
      onPressed: onTap,
      padding: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Colors.white,
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF527DAA),
          letterSpacing: 1.5,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans',
        ),
      ),
    ),
  );
}

//le text pour l'autre login
Widget SignInWithText() {
  return Column(
    children: <Widget>[
      Text(
        '- OR -',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(height: 20.0),
      Text(
        'Sign in with',
        style: kLabelStyle,
      ),
    ],
  );
}

///pour le login utilisant faceboor ou googcle account mais pas encore supporter
Widget SocialBtn(Function onTap, AssetImage logo) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
        image: DecorationImage(
          image: logo,
        ),
      ),
    ),
  );
}

////si il a le choix de faire une autre operation
Widget OtherChoice(String info, String what_to_do, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            //         text: 'ليس لديك حساب ؟ ',
            text: info,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            //    text: 'انشاء حساب',
            text: what_to_do,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
