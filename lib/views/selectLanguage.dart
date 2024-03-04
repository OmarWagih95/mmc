import 'package:flutter/material.dart';
import 'cubitRouting.dart';
import '/cubits/app_cupit.dart';

class chooseLanguages extends StatefulWidget {
  chooseLanguages({super.key});

  @override
  State<chooseLanguages> createState() => _chooseLanguagesState();
}

class _chooseLanguagesState extends State<chooseLanguages> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
          child: SizedBox(
        height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'language',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
            Text(
              ' choose language of the interface',
              style: TextStyle(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      minimumSize: MaterialStateProperty.all(Size(180, 40))),
                  onPressed: () {
                    setState(() {
                      app_cupit.lan = 'ar';
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => cubitRouting(),
                        ));
                  },
                  child: const Text(
                    'العربية',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                      app_cupit.lan = 'en';
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => cubitRouting(),
                          ));
                    },
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(180, 40)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    child: const Text(
                      'ُEnglish',
                      style: TextStyle(color: Colors.blueGrey),
                    )),
              ],
            )
          ],
        ),
      )),
    );
  }
}

// bool isArabic() {
//   return Intl.getCurrentLocale() == "ar";
// }
