import 'package:flutter/material.dart';
import 'package:my_project/presentation/drop_down_currencies.dart';
import 'package:my_project/presentation/input_form.dart';

class AddPocketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Add Pocket'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            NameForm(),
            InitialMoneyForm(),
            DropDownCurrency(),
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: RaisedButton(
                onPressed: () {},
                textColor: Colors.black,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Create Pocket',
                      style: TextStyle(fontSize: 20)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
