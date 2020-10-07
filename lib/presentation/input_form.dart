import 'package:flutter/material.dart';

class NameForm extends StatefulWidget {
  @override
  _NameFormState createState() => _NameFormState();
}

class _NameFormState extends State<NameForm> {
  final nameFormController = TextEditingController();

  @override
  void dispose() {
    nameFormController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 55, bottom: 16),
            child: Text(
              "Pocket Name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          TextFormField(
            maxLength: 12,
            style: TextStyle(fontSize: 20.0, color: Colors.black),
            controller: nameFormController,
            onChanged: (text) => {print("NameFormText = $text")},
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal)),
              // icon: Icon(Icons.credit_card),
              fillColor: Colors.white,
              hintText: 'Enter Pocket Name',
              // labelText: 'Pocket Name',
            ),
            validator: (String value) {
              return value.isEmpty ? 'You should enter pocket name.' : null;
            },
          ),
        ],
      ),
    );
  }
}

class InitialMoneyForm extends StatefulWidget {
  @override
  _InitialMoneyFormState createState() => _InitialMoneyFormState();
}

class _InitialMoneyFormState extends State<InitialMoneyForm> {
  final moneyFormController = TextEditingController();

  @override
  void dispose() {
    moneyFormController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, bottom: 16),
            child: Text(
              "Initial Money",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          TextFormField(
            style: TextStyle(fontSize: 20.0, color: Colors.black),
            controller: moneyFormController,
            onChanged: (text) => {print("MoneyFormText = $text")},
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal)),
              // icon: Icon(Icons.credit_card),
              fillColor: Colors.white,
              hintText: 'Enter Initial Money',
              // labelText: 'Pocket Name',
            ),
            validator: (String value) {
              return value.isEmpty
                  ? 'You should enter your initail money.'
                  : null;
            },
          ),
        ],
      ),
    );
  }
}
