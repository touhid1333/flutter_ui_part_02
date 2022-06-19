import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_part_02/utils/widget_function.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;
    final double padding = 20;
    final EdgeInsets sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
        child: Scaffold(
      backgroundColor: themeData.colorScheme.primary,
      body: Container(
        height: screenSize.height,
        width: screenSize.height,
        child: Column(
          children: [
            addVerticalSpace(padding),
            Padding(
              padding: sidePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Bambang",
                        style: themeData.textTheme.headline1,
                      ),
                      addVerticalSpace(10),
                      Text(
                        "Let's listen to something cool today",
                        style: themeData.textTheme.subtitle2,
                      ),
                    ],
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: themeData.colorScheme.background.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: Badge(
                      position: const BadgePosition(top: 7, end: 10),
                      badgeColor: themeData.colorScheme.secondary,
                      child: Icon(
                        Icons.notifications_none_rounded,
                        color: themeData.colorScheme.onBackground,
                      ),
                    ),
                  )
                ],
              ),
            ),
            addVerticalSpace(padding),
            Row(
              children: [
                Text(
                  "Your favorite artist",
                  style: themeData.textTheme.headline4,
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
