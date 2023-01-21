import 'package:flutter/material.dart';
import 'package:flutter_app_sample/models/employee.dart';
import 'package:flutter_app_sample/states/app_state.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CompanyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<CompanyPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: [
      MaterialButton(
          child: Text('back'),
          onPressed: () {
            Navigator.pop(context);
          }),
      const Text('Company page'),
      Observer(
          // specific rerendering when AppState.company changes
          builder: (_) => Text(AppState.company.name)),
      TextField(
        onSubmitted: (name) => AppState.addEmployee(name),
        decoration: const InputDecoration(hintText: 'enter a employee name'),
      ),
    ]));
  }
}
