import 'package:bio_app2/core/constants.dart';
import 'package:bio_app2/core/resources/manager_colors.dart';
import 'package:bio_app2/core/resources/manager_font_weights.dart';
import 'package:bio_app2/core/resources/manager_strings.dart';
import 'package:bio_app2/core/resources/manger_font_sizes.dart';
import 'package:flutter/material.dart';

import 'core/routes.dart';
import 'core/widgets/user_card.dart';

class BioApp extends StatelessWidget {
  const BioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          ManagerStrings.bioApp,
          style: TextStyle(
              fontSize: ManagerFontSizes.s24, color: ManagerColors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Routes.aboutScreen,
                  arguments: {
                    'description': 'Hello In Flutter App',
                    'name': 'ahmad',
                    'url': 'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'
                  },
                );
              },
              icon: Icon(
                Icons.info,
                color: ManagerColors.white,
              ))
        ],
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.appBarElevation,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
              ManagerColors.primaryColor,
              ManagerColors.secondaryColor
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage('assets/images/avatar2.png'),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              ManagerStrings.userName,
              style: TextStyle(
                fontSize: ManagerFontSizes.s20,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                fontFamily: 'Georama',
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              ManagerStrings.flutterCourse,
              style: TextStyle(
                  fontSize: ManagerFontSizes.s18,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Georama',
                  color: ManagerColors.white),
            ),
            Divider(
              indent: 60,
              endIndent: 60,
              height: 5,
              thickness: 2,
              color: Colors.white,
            ),
            UserCard(),
            UserCard(
              userName: 'yara',
              dis: 'dump',
              icon: Icon(Icons.person_3_outlined),
            )
          ],
        ),
      ),
    );
  }
}
