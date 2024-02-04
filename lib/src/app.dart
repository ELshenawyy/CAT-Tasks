import 'dart:io';
import 'package:api_bloc_clean/src/bloc/authentication/bloc/authentication_bloc.dart';
import 'package:api_bloc_clean/src/view/screens/splash_screen.dart';
import 'package:api_bloc_clean/src/view/style/theme_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




class App extends StatelessWidget {


  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers:[
          BlocProvider(create: (context)=>AuthenticationBloc()),
        ],
        child: const PlatformApp(),
    );
  }
}



class PlatformApp extends StatelessWidget {
  const PlatformApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return const CupertinoApp();
    }
    else {
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        theme: themeData,
      );
    }
  }
}


