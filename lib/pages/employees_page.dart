import 'package:flutter/material.dart';
import 'package:flutter_app_sample/states/app_state.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class EmployeesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<EmployeesPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: [
      const Text('Employees page'),
      Observer(
          // specific rerendering when AppState.employees changes
          builder: (_) => Column(
              children:
                  AppState.employees.value.map((e) => Text(e.name)).toList()))
    ]));
  }
}
