import 'package:flutter/material.dart';
import 'package:learprovider/provider/countProvider.dart';
import 'package:learprovider/provider/countexapmle.dart';
import 'package:learprovider/provider/favouriteprovider.dart';
import 'package:learprovider/screens/exampleonescreen.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Providercount(),
        ),
        ChangeNotifierProvider(
          create: (context) => Countexample(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavouriteProvider(),
        ),
      ],
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}
