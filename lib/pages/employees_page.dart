import 'package:flutter/material.dart';
import 'package:flutter_app_sample/states/app_state.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class EmployeesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<EmployeesPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: [
      MaterialButton(
          child: Text('back'),
          onPressed: () {
            Navigator.pop(context);
          }),
      const Text('Employees page'),
      Observer(
          // specific rerendering when AppState.employees changes
          builder: (_) => Column(
              children: AppState.employees.map((e) => Text(e.name)).toList())),
      MaterialButton(
        child: const Text('clear'),
        onPressed: clear,
      ),
    ]));
  }

  @action
  void clear() {
    AppState.employees = [];
  }
}
