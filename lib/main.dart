import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Demo App'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const Text('body'),
          ElevatedButton(onPressed: () {}, child: const Text("data")),
          TextButton(onPressed: () {}, child: const Text("data")),
          DropdownButton(
            items: const [],
            onChanged: null,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.inversePrimary,
        unselectedItemColor: Colors.grey,
        iconSize: 22,
        backgroundColor: Colors.transparent,
        elevation: 0,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Call',
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
