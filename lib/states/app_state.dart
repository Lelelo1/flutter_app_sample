import 'package:flutter_app_sample/models/company.dart';
import 'package:flutter_app_sample/models/employee.dart';

import 'package:mobx/mobx.dart';

class AppState {
  static Observable<Company> company = Observable(Company('', []));
  static Observable<List<Employee>> employees = Observable([]);
}
