import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool _isDarkTheme = false;

String _textLight = "Hello world";
String _textDark = "Bye world";

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.amber,
  brightness: Brightness.light,
  buttonTheme: ButtonThemeData(buttonColor: Colors.amberAccent),
);

ThemeData _darkTheme = ThemeData(
  primarySwatch: Colors.lightBlue,
  brightness: Brightness.dark,
);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkTheme ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dark & Light Theme"),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _isDarkTheme = !_isDarkTheme;
                });
              },
              icon: Icon(_isDarkTheme ? _iconDark : _iconLight),
            ),
          ],
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                _isDarkTheme = !_isDarkTheme;
              });
            },
            child: TextButton(
              onPressed: () {},
              child: Text(_isDarkTheme ? _textDark : _textLight),
            ),
          ),
        ),
      ),
    );
  }
}
