import 'package:flutter_app_sample/models/company.dart';
import 'package:flutter_app_sample/models/user.dart';

import 'package:mobx/mobx.dart';

class AppState {
  static Observable<Company> company = Observable(Company('', []));
  static Observable<User> user = Observable(User(''));
}
