import 'package:flutter/material.dart';
import 'package:lab_flatt/app/profile_page.dart';
import 'package:lab_flatt/app/section_services.dart';
import 'package:lab_flatt/app/settings_page.dart';
import 'package:lab_flatt/app/title_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        useMaterial3: true,
      ),
      home:
      BuildApp()
    );
  }
}

class BuildApp extends StatelessWidget {
  const BuildApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return <Widget> [
                    SliverAppBar(
                      surfaceTintColor: Colors.white,
                      toolbarHeight: 200,
                      floating: true,
                      title: TitleProfile("assets/images/avatar.png", "Екатерина"),
                      bottom: TabBar(
                          indicatorColor: Colors.green,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          labelStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                          unselectedLabelStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                          tabs: [
                            Tab(text: "Профиль"),
                            Tab(text: "Настройки")
                        ]
                      ),
                  )
                ];
              },

              body: TabBarView(
                children: [
                  ProfilePage(),
                  SettingsPage()
                ],
              ),
            ),
          )
    );
  }
}