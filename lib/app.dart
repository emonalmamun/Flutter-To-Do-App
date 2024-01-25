import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do',
      themeMode: ThemeMode.system,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}