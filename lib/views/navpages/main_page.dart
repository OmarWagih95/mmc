// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:androidstudiommc/views/navpages/SettingsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/misc/colors.dart';
import '/views/navpages/BarItemPage.dart';
import '/views/navpages/HomePage.dart';
import '/views/navpages/Mypage.dart';
import '/views/navpages/searshPage.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  ////////
  int Currindx = 0;
  List pages = [HomePage(), BarItempage(), SettingsPage(), Mypage()];
  void Function(int)? ontap(indx) {
    setState(() {
      Currindx = indx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: AppColors.mainColor,
            unselectedItemColor: AppColors.mainColor.withOpacity(.3),
            currentIndex: Currindx,
            onTap: (e) => ontap(e),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.apps), label: 'الرئيسية'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'طلبي'),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                       child: Icon(Icons.settings)),
                  label: 'الأعدادات'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.auto_fix_normal), label: 'باقات الصيانة'),
            ]),
        body: pages[Currindx]);
  }
}
