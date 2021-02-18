import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_market/source/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FirstLogin()),
      ],
      child: MaterialApp(
        title: 'Tech Market',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "Metropolis",
        ),
        home: Consumer<FirstLogin>(builder: (context, state, child) {
          return state.firstLogin ? Home() : Open();
        }),
      ),
    );
  }
}
