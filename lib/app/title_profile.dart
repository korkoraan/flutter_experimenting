import 'package:flutter/material.dart';


class TitleProfile extends StatelessWidget {
  final String avatarPhoto;
  final String name;
  TitleProfile(this.avatarPhoto, this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
          child: Column(
            children: [
              Row (
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalDirection: VerticalDirection.down,
                children: [
                  IconButton (onPressed: () {}, icon: Icon(Icons.close, color: Colors.green)),
                  Spacer(),
                  Image.asset(avatarPhoto, width: 110, height: 110),
                  Spacer(),
                  IconButton (onPressed: () {}, icon: Icon(Icons.logout, color: Colors.green)),

                ],
              ),
              SizedBox(height: 10),
              Text(name,
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600)),
            ],

          ),


    );
  }
}