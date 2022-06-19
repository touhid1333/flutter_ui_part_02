import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {
  final double height;
  final double width;
  final String? title;
  final String image;
  final int type; // 0 => no title, 1 => bottom title, 2 => inside title

  const BorderBox(
      {Key? key,
      required this.height,
      required this.width,
      this.title,
      required this.image,
      required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15),
      ),
      child: type == 1 || type == 0
          ? Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                if (type == 1)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      title!,
                      style: themeData.textTheme.headline4,
                    ),
                  ),
              ],
            )
          : Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
                if (type == 2)
                  Positioned(
                    bottom: 10,
                    child: Text(
                      title!,
                      style: themeData.textTheme.headline4,
                    ),
                  ),
              ],
            ),
    );
  }
}
