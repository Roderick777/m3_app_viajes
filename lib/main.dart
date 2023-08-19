import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m3_app_viajes/utils/platform.util.dart';
import 'package:provider/provider.dart';
import 'package:m3_app_viajes/data/provider/main.provider.dart';
import 'package:m3_app_viajes/ui/views/home_view/home.view.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => MainProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (isMainPlatform()) {
      return const CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      );
    } else {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const HomeView(),
      );
    }
  }
}
