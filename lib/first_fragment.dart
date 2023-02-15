import 'package:flutter/material.dart';
import 'second_fragment.dart';

class FirstFragment extends StatefulWidget {
  @override
  _FirstFragmentState createState() => _FirstFragmentState();
}

class _FirstFragmentState extends State<FirstFragment> {
  final _formKey = GlobalKey<FormState>();
  String _numbers = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zadanie Rekrutacyjne'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Podaj liczby po przecinku'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Proszę podać liczby';
                  }
                  return null;
                },
                onSaved: (value) {
                  _numbers = value ?? '';
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondFragment(numbers: _numbers),
                      ),
                    );
                  }
                },
                child: Text('Wyszukaj'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
