
import 'package:lab_flatt/app/section_services.dart';
import 'package:flutter/cupertino.dart';

class ServicesButtonData {
  ServicesButtonData(this.imagePath,  this.name, this.title, this.subtitle);

  final String imagePath;
  final String name;
  final String title;
  final String subtitle;
}

class TariffsButtonData {
  TariffsButtonData(this.icon, this.title, this.subtitle);

  final Icon icon;
  final String title;
  final String? subtitle;
}


