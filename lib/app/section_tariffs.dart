import 'package:flutter/material.dart';
import 'package:lab_flatt/app/services_entity.dart';

List<TariffsButtonData> listTariffs = [
  TariffsButtonData(
      Icon(Icons.speed, color: Colors.green, size: 35),
      "Изменить суточный лимит",
      "На платежи и переводы"),
  TariffsButtonData(
      Icon(Icons.percent_rounded, color: Colors.green, size: 35),
      "Переводы без комиссии",
      "Показать остаток в этом месяце"),
  TariffsButtonData(
      Icon(Icons.sync_alt, color: Colors.green, size: 35),
      "Информация о тарифах и лимитах",
      null)
];

class SectionTariffs extends StatelessWidget {
  const SectionTariffs(this.listTariffs, {super.key});
  final List<TariffsButtonData> listTariffs;

  @override
  Widget build(BuildContext context){
    return Column(
        children: [
          for (int i = 0; i < listTariffs.length; i++)

              TariffsButton(listTariffs[i]),
        ],

    );
  }


}

class TariffsButton extends StatelessWidget {
  const TariffsButton(this.data, {super.key});

  final TariffsButtonData data;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 13),
                  child: data.icon,
                ),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            data.title,
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black)
                        ),
                        if (data.subtitle != null)
                          Text(
                              data.subtitle??'',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.9)
                              ),
                          ),
                      ],
                    )
                ),
                Icon(Icons.arrow_right, color: Colors.grey),

              ],
            ),
          ),

          Divider()
        ]
    );
  }
}