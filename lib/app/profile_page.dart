import 'package:flutter/material.dart';
import 'package:lab_flatt/app/section_interests.dart';
import 'package:lab_flatt/app/section_services.dart';
import 'package:lab_flatt/app/section_tariffs.dart';

class ProfilePage extends StatelessWidget {

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13),
        child: ListView(
          children: [
            Headline("У вас подключено", "Подписки, автоплатежи и сервисы, на которые вы подписались"),
            SizedBox(height: 20),
            SectionServices(listServices),
            SizedBox(height: 25),

            Headline("Тарифы и лимиты", "Для операций в Сбербанк Онлайн"),
            SizedBox(height: 20),
            SectionTariffs(listTariffs),
            SizedBox(height: 25),

            Headline("Интересы", "Мы подбираем истории и предложения по темам,"
                "которые вам нравятся"),
            SizedBox(height: 20),
            SectionInterests(listInterests),

          ],


    )
    );
  }
}

class Headline extends StatelessWidget {
  final String title;
  final String subtitle;

  Headline(this.title, this.subtitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: TextStyle(fontSize: 19,
                fontWeight: FontWeight.w700)),
          Text(subtitle,
            style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.9),
                color: Colors.grey))
        ]
    )
    );
  }
}