import 'package:gestion_notes/screens.dart';
get routes => 
  {
    '/': (context) => HomeScreen(),
    '/login': (context) => LoginScreen(),
    '/register': (context) => RegisterScreen(),
    '/accountNotActivatedYet': (context) => AccountNotVerifiedYetScreen()
  };

