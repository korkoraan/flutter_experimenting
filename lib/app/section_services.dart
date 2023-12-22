import 'package:flutter/material.dart';
import 'package:lab_flatt/app/services_entity.dart';


List<ServicesButtonData> listServices = [
  ServicesButtonData(
      "assets/images/sberPrime.png",
      "СберПрайм",
      "Платёж 9 июля",
      "199Р в месяц"),
  ServicesButtonData(
      "assets/images/sberPerevods.png",
      "Переводы",
      "Автопродление 21 августа",
      "199Р в месяц")
];

class SectionServices extends StatelessWidget {
  const SectionServices(this.listServices, {super.key});
  final List<ServicesButtonData> listServices;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < listServices.length; i++)
            Padding(
              padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
              child: ServicesButton(listServices[i]),)
        ],
      ),
    );
  }


}

class ServicesButton extends StatelessWidget {
  const ServicesButton(this.data, {super.key});

  final ServicesButtonData data;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        surfaceTintColor: Colors.white,
        fixedSize: Size(230, 200),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 0),
          Row(
            children: [
              Image.asset(data.imagePath, width: 40, height: 40),
              Text(
                  data.name,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black
                  )
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  data.title,
                  style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
              )),
              Text(
                  data.subtitle,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                  )
              )
            ],
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}