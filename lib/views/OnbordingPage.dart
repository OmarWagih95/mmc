import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/cubits/app_cupit.dart';
import '/cubits/cupit_states.dart';
import '/views/detailPage.dart';
import '/views/navpages/main_page.dart';
import '/widgets/Dots.dart';
import '/widgets/Mybutton.dart';
import '/widgets/mytext.dart';

class onboardingPage extends StatefulWidget {
  onboardingPage({super.key});

  @override
  State<onboardingPage> createState() => _welcomState();
}

class _welcomState extends State<onboardingPage> {
  String img = 'img/mmcassits/';
  int indx = 0;

  PageController pageController = PageController();
  List Images = [
    '1.jpg',
    '2.jpg',
    '3.jpg',
    '4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: PageView.builder(
          controller: pageController,
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, counter) {
            indx = counter;
            return SafeArea(
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(img + Images[indx]))),
                child: Container(
                  // width: 200,
                  child: Column(
                    mainAxisAlignment: indx < 3
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.end,
                    children: [
                      indx < 3 ? Dots(Pageindex: indx) : SizedBox(),
                      indx < 3
                          ? GestureDetector(
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'تخطي',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  indx = 3;
                                  pageController.jumpToPage(indx);
                                });
                              },
                            )
                          : Container(
                              width: 405,
                              height: 40,
                              // padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                  onPressed: () {
                                    BlocProvider.of<app_cupit>(context)
                                        .mainpage();
                                  },
                                  child: onbordingInputButton()),
                            )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class onbordingInputButton extends StatelessWidget {
  const onbordingInputButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Icon(
          color: Colors.white,
          Icons.arrow_left_rounded,
          size: 35,
        ),
        mytext(
          'استمرار',
          color: Colors.white,
          size: 20,
        ),
      ]),
    );
  }
}
