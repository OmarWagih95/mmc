// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:androidstudiommc/generated/l10n.dart';
import 'package:flutter/material.dart';
import '/cubits/visibilityCubit.dart';
import '/widgets/homePageHelperWidgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/cubits/app_cupit.dart';
import '/cubits/cupit_states.dart';
import '/misc/colors.dart';
import '/widgets/circleTab_indicator.dart';
import '/widgets/mytext.dart';
import '/misc/colors.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void filterSearchResults(String query) {
    if (query.isNotEmpty) {
      print('items is' + '$filteredItems');

      Map<String, String> dummyMapData = {};
      items.forEach((key, value) {
        if (value.toLowerCase().contains(query.toLowerCase())) {
          dummyMapData[key] = value;
        }
      });
      setState(() {
        filteredItems.clear();
        filteredItems.addAll(dummyMapData);
      });
      return;
    } else {
      print('items is' + '$filteredItems');

      setState(() {
        filteredItems.clear();
        filteredItems.addAll(items);
      });
    }
  }

  final search_controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    filteredItems.addAll(items);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => VisibilityCubit(),
      child: Scaffold(
          drawer: Drawer(child: CustomDrawer()),
          body: SingleChildScrollView(
              child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      leftappbar(),
                      Text(
                        'MCC',
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                  BlocBuilder<VisibilityCubit, VisibilityState>(
                      builder: (context, state) {
                    return messageText(
                      isVisible: state.isVisible,
                    );
                  }),
                  searchbar(
                    onChanged: filterSearchResults,
                    search_controller: search_controller,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      S.of(context).choose_maintenance_service,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(S
                          .of(context)
                          .then_get_best_prices_from_our_suppliers)),
                  servicesGridView()
                ],
              ),
            ),
          ))),
    );
  }
}
/////////////*********************************************************//////////////////


