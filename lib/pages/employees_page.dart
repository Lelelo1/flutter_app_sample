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
          builder: (_) => Column(
              children:
                  AppState.employees.value.map((e) => Text(e.name)).toList()))
    ]));
  }

  // When AppState 'employees' variable change it will change the displayed column of employees
  // A feature of Mobx is that only the widget wrapped with 'Observer' is rebuilt (specific rendering)'

  // (Potentially I will also show example to make 'Employee's 'name' variable an observable. It means that
  // one item in a list of widget can be rerendered isoloated from rest of the list)

}
