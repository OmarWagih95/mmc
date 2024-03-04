// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/cubits/app_cupit.dart';
import '/misc/colors.dart';
import '/widgets/Mybutton.dart';
import '/widgets/mytext.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  int IconcolorIndex = 0;
  List<Color> Iconcolor = [Colors.black, Colors.red];
  bool visible = true;
  int currentindex = 0;
  int lengh = 5;
  late Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
          height: 750,
          width: double.infinity,
          child: Stack(children: [
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('img/mountain.jpeg'))),
            ),
            Container(
                margin: EdgeInsets.only(top: 70, left: 20, right: 20),
                child: Row(
                  children: [
                    IconButton(
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.centerLeft,
                        icon: Icon(Icons.arrow_back, color: Colors.white, size: 32),
                        onPressed: () {
                          BlocProvider.of<app_cupit>(context).mainpage();
                        }),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          visible = !visible;
                        });
                      },
                      icon: Icon(Icons.comments_disabled_sharp,
                          color: Colors.white, size: 32),
                    ),
                  ],
                )),
            Visibility(
              visible: visible,
              child: Positioned(
                top: 300,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(children: [
                                mylargetext("Yasemit"),
                                Spacer(),
                                mylargetext(
                                  "\$ 250",
                                  color: AppColors.mainColor,
                                )
                              ]),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: AppColors.mainColor,
                                      ),
                                      Text(
                                        'usa company',
                                        style: TextStyle(
                                          color: AppColors.mainColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      ...List.generate(
                                          4,
                                          (index) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              )),
                                      Icon(Icons.star, color: Colors.grey),
                                      Text("(4.8)")
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            title: mylargetext("people"),
                            subtitle: mytext("number of people in your group"),
                          ),
                          Row(
                            children: [
                              ...List.generate(
                                  5,
                                  (ind) => InkWell(
                                        onTap: () {
                                          setState(() {
                                            currentindex = ind;
                                          });
                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(4),
                                          child: buttons(
                                            Textcolor: currentindex == ind
                                                ? Colors.white
                                                : Colors.black,
                                            backgroundcolor: currentindex == ind
                                                ? Colors.black
                                                : AppColors.buttonBackground,
                                            text: '${(ind + 1)}',
                                          ),
                                        ),
                                      ))
                            ],
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: mylargetext('Description'),
                            ),
                            subtitle: mytext(
                                'this is a random word to descripe this app this is a random word to descripe this app this is a random word to descripe this app'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.favorite_outlined,
                                    color: Iconcolor.elementAt(
                                        IconcolorIndex++ % 2),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      IconcolorIndex;
                                    });
                                  },
                                ),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all()),
                              ),
                              Mybutton(
                                onPressed: () {},
                                img: 'img/button-one.png',
                                extended: true,
                                text: 'Book trip Now   ',
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ),
            )
          ])),
    ));
  }
}

class buttons extends StatelessWidget {
  String text;
  Color Textcolor;
  Color backgroundcolor;
  buttons(
      {super.key,
      required this.Textcolor,
      required this.backgroundcolor,
      required this.text});

  @override
  Widget build(BuildContext context) {
    print("object");
    return Container(
      decoration: BoxDecoration(
          color: backgroundcolor, borderRadius: BorderRadius.circular(12)),
      width: 45,
      height: 45,
      child: Center(
        child: mylargetext(
          text,
          size: 16,
          color: Textcolor,
        ),
      ),
    );
  }
}
