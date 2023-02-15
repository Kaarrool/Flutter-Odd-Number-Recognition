import 'package:flutter/material.dart';

class SecondFragment extends StatefulWidget {
  final String? numbers;

  SecondFragment({this.numbers});

  @override
  _SecondFragmentState createState() => _SecondFragmentState();
}

class _SecondFragmentState extends State<SecondFragment> {
  List<int> _oddNumbers = [];

  @override
  void initState() {
    super.initState();
    // Przetwarzanie przesłanych liczb
    List<String> _numbers = widget.numbers!.split(',');
    _numbers.forEach((number) {
      int? n = int.tryParse(number);
      if (n != null && n.isOdd) {
        _oddNumbers.add(n);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Lista liczb nieparzystych: ${_oddNumbers.join(', ')}'),
    );
  }
}