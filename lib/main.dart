import 'package:flutter/material.dart';
import 'first_fragment.dart';

void main() {
  runApp(RecruitmentTask());
}

class RecruitmentTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zadanie Rekrutacyjne',
      home: FirstFragment(),
    );
  }
}
