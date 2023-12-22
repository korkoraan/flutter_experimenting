

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> listInterests = [
  "Еда",
  "Саморазвитие",
  "Технологии",
  "Дом",
  "Досуг",
  "Забота о себе",
  "Наука"
];

class SectionInterests extends StatelessWidget {
  const SectionInterests(this.listInterests, {super.key});
  final List<String> listInterests;

  @override
  Widget build(BuildContext context){
    return Wrap(
      children: [
        for (int i = 0; i < listInterests.length; i++)
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: InterestsButton(listInterests[i]))


      ],
    );
  }


}

class InterestsButton extends StatelessWidget {
  const InterestsButton(this.data, {super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Chip(
        backgroundColor: Colors.white38,
        label: Text(
          data,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.9)
          ),
        )
    );
  }
}