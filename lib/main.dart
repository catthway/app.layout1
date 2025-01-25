import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return size.width < 600
        ? MobileLayout() // Layout para telas menores
        : WebLayout();   // Layout para telas maiores
  }
}

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mobile Layout")),
      body: Center(child: Text("Tela para dispositivos móveis")),
      );
  }
}

class WebLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Web Layout")),
      body: Center(child: Text("Tela para navegadores web")),
    );
  }
}

