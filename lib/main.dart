import 'package:flutter/material.dart';
import 'package:m6_app_tests/ui/views/home_view/home_view.dart';
import 'package:m6_app_tests/ui/states/providers/main_provider.dart';
import 'package:provider/provider.dart';

void main() {
  // Implementación necesaria para poder utilizar libreria Localstore
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color mainColor = Provider.of<MainProvider>(context).mainColor;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
