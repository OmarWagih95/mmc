import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/cubits/app_cupit.dart';
import '/cubits/cupit_states.dart';
import '/views/detailPage.dart';
import '/views/navpages/main_page.dart';
import 'OnbordingPage.dart';

class cubitRouting extends StatefulWidget {
  cubitRouting({super.key});

  @override
  State<cubitRouting> createState() => _welcomPageState();
}

class _welcomPageState extends State<cubitRouting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<app_cupit, cupit_states>(
      builder: (context, state) {
        if (state is onboardingPageState) {
          return onboardingPage();
        } else if (state is mainpageState) {
          return mainpage();
        } else if (state is detailedpageState) {
          return detailPage();
        } else
          return Scaffold(
            body: Center(child: Text('un known state')),
          );
      },
    ));
  }
}

