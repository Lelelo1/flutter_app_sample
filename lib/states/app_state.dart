import 'package:flutter_app_sample/models/company.dart';
import 'package:flutter_app_sample/models/employee.dart';

import 'package:mobx/mobx.dart';

class AppState {
  @observable
  static Company company = Company('', []);
  @observable
  static List<Employee> employees = [];

  static addEmployee(String name) {
    AppState.employees = [...AppState.employees, Employee(name)];
  }
}
