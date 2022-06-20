import 'package:flutter/material.dart';
import 'package:flutter_ui_part_02/utils/widget_function.dart';

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
    return Row(
      children: [
        addHorizontalSpace(20),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15),
          ),
          child: type == 1 || type == 0
              ? Column(
                  children: [
                    SizedBox(
                      height: width,
                      width: width,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    if (type == 1)
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          title!,
                          style: themeData.textTheme.bodyText1,
                        ),
                      ),
                  ],
                )
              : Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        image,
                        fit: BoxFit.fill,
                        height: height,
                        width: width,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    if (type == 2)
                      Positioned(
                        bottom: 10,
                        child: Text(
                          title!,
                          style: themeData.textTheme.bodyText1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                ),
        ),
      ],
    );
  }
}
