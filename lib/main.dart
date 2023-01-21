import 'package:flutter/material.dart';
import 'package:flutter_app_sample/pages/company_page.dart';
import 'package:flutter_app_sample/pages/employees_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Visit the pages, interact with them and to see how app state is stored and reflected in the ui',
            ),
            MaterialButton(
                child: Text('company_page'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CompanyPage()));
                }),
            MaterialButton(
                child: Text('employees_page'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => EmployeesPage()));
                })
          ],
        ),
      ),
    );
  }
}

/*
FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add)
*/