import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_strings.dart';
import '../resources/manger_font_sizes.dart';

class UserCard extends StatelessWidget {
  String? userName;
  String? dis;
  Icon? icon;

  UserCard({
    super.key,
    this.userName,
    this.dis,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListTile(
          leading: icon ?? Icon(Icons.person),
          title: Text(
            userName ?? ManagerStrings.userName,
            style: TextStyle(
              fontSize: ManagerFontSizes.s16,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              fontFamily: 'Georama',
            ),
          ),
          subtitle: Text(
            dis ?? ManagerStrings.dis,
            style: TextStyle(
                fontSize: ManagerFontSizes.s14,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                fontFamily: 'Georama',
                color: ManagerColors.gray),
          ),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.share))),
    );
  }
}
