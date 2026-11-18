import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/container_config.dart';
import 'widgets/red_container.dart';
import 'widgets/sliders_section.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ContainerConfig(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Demo Home Page'),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          SlidersSection(),
          Center(child: RedContainer()),
        ],
      ),
    );
  }
}