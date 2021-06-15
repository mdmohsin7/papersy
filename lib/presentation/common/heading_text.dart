import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String mainTitle;
  final String subTitle;
  const HeadingText({required this.mainTitle, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          mainTitle,
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).textTheme.headline6!.color,
          ),
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).textTheme.bodyText1!.color,
          ),
        ),
      ],
    );
  }
}
