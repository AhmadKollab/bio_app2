import 'package:bio_app2/core/resources/manager_font_weights.dart';
import 'package:bio_app2/core/resources/manager_strings.dart';
import 'package:bio_app2/core/resources/manger_font_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/routes.dart';


class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    print('ini');
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed (context, Routes.bioScreen);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            ManagerStrings.bioApp,
            style: TextStyle(
                fontSize: ManagerFontSizes.s24,
                fontWeight: ManagerFontWeights.w600),
          ),
        ));
  }
  @override
  void dispose() {
    print('dis');
    super.dispose();
  }
}
