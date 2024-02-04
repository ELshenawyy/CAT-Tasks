import 'package:api_bloc_clean/src/view/screens/login.dart';
import 'package:api_bloc_clean/src/view/screens/p_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences pref = await SharedPreferences.getInstance();
  bool? decision = pref.getBool('x');

  Widget screen = (decision == false || decision == null)
      ? const PView()
      : const LoginScreen();

  runApp(screen);
}
