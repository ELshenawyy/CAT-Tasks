
import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(

        inputDecorationTheme:InputDecorationTheme(
          alignLabelWithHint: true,
          labelStyle: const TextStyle(
            color: Colors.black12,
            fontWeight: FontWeight.bold,
          ),
          fillColor: Colors.deepOrangeAccent,
          isDense: true,
          focusColor: Colors.amber,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2.0,

              style: BorderStyle.solid,

            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2.0,

              style: BorderStyle.solid,

            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2.0,

              style: BorderStyle.solid,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2.0,
            ),
          ),
        ),
);