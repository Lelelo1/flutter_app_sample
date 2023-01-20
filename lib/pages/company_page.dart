import 'package:flutter/material.dart';
import 'package:flutter_app_sample/states/app_state.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CompanyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text('Company page'),
      Observer(builder: (_) => Text(AppState.company.name))
    ]);
  }

  // When AppState 'company' varible change it will change the displayed company name
  // A feature of Mobx is that only the text widget wrapped with 'Observer' is rebuilt (specific rendering)'
}
