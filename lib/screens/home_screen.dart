import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_part_02/custom/border_box.dart';
import 'package:flutter_ui_part_02/utils/sample_data.dart';
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        color:
                            themeData.colorScheme.background.withOpacity(0.3),
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
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your favorite artist",
                      style: themeData.textTheme.headline4,
                    ),
                    IconButton(
                        onPressed: () {},
                        splashColor:
                            themeData.colorScheme.secondary.withOpacity(0.2),
                        splashRadius: 20,
                        iconSize: 16,
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: themeData.colorScheme.onPrimary,
                        ))
                  ],
                ),
              ),
              addVerticalSpace(5),
              //fav artist horizontal
              SizedBox(
                height: screenSize.width * 0.26,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: artistData.length,
                    itemBuilder: (context, index) {
                      return FavoriteArtist(artistData: artistData[index]);
                    }),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent played",
                      style: themeData.textTheme.headline4,
                    ),
                    IconButton(
                        onPressed: () {},
                        splashColor:
                            themeData.colorScheme.secondary.withOpacity(0.2),
                        splashRadius: 20,
                        iconSize: 16,
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: themeData.colorScheme.onPrimary,
                        ))
                  ],
                ),
              ),
              //recent played playlist start
              SizedBox(
                height: 170,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: playlistData.length,
                    itemBuilder: (context, index) {
                      return playlistData[index]["fav"] == true
                          ? BorderBox(
                              height: 170,
                              width: 120,
                              image: playlistData[index]["image"].toString(),
                              title: playlistData[index]["name"].toString(),
                              type: 1)
                          : const SizedBox(
                              height: 0,
                              width: 0,
                            );
                    }),
              ),
              //recent played playlist end
              addVerticalSpace(10),
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Made for you",
                      style: themeData.textTheme.headline4,
                    ),
                    IconButton(
                        onPressed: () {},
                        splashColor:
                            themeData.colorScheme.secondary.withOpacity(0.2),
                        splashRadius: 20,
                        iconSize: 16,
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: themeData.colorScheme.onPrimary,
                        ))
                  ],
                ),
              ),
              //made for you playlist start
              SizedBox(
                height: 150,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: playlistData.length,
                    itemBuilder: (context, index) {
                      return playlistData[index]["fav"] == false
                          ? BorderBox(
                              height: 170,
                              width: 120,
                              image: playlistData[index]["image"].toString(),
                              title: playlistData[index]["name"].toString(),
                              type: 2)
                          : const SizedBox(
                              height: 0,
                              width: 0,
                            );
                    }),
              ),
              //made for you playlist end
            ],
          ),
        ),
      ),
    ));
  }
}

class FavoriteArtist extends StatelessWidget {
  final dynamic artistData;

  const FavoriteArtist({Key? key, required this.artistData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        addHorizontalSpace(20),
        Column(
          children: [
            SizedBox(
              height: size.width * 0.18,
              width: size.width * 0.18,
              child: ClipOval(
                child: Image.asset(
                  artistData["image"].toString(),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            addVerticalSpace(10),
            Text(
              artistData["name"].toString(),
              style: themeData.textTheme.bodyText1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }
}
