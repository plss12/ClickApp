import 'package:flutter/material.dart';

class ColorsData {
  static Color backColor = const Color(0xfffaf8ef);
  static Color darkBackColor = const Color(0xff132e49);
  static Color boxLetterColor = const Color(0xffb9aea2);
  static Color boxColor = const Color(0xff776e65);
  static Color boxNumberColor = const Color(0xfff9f6f2);
  static Color iconColor = const Color.fromARGB(255, 223, 139, 60);
  static Color buttonColor = const Color.fromARGB(255, 223, 139, 60);
  static Color backgroundColor = backColor;
  static Icon modeIcon = const Icon(Icons.nightlight_round);
  static Icon iconIcon =
      Icon(Icons.touch_app_rounded, color: boxNumberColor, size: 60);
  static Icon topIcon = const Icon(Icons.workspace_premium_rounded);
  static Icon button = const Icon(
    Icons.trending_up_rounded,
    size: 100,
  );
  static Icon coin = const Icon(
    Icons.monetization_on_rounded,
  );
  static Icon startIcon = const Icon(
    Icons.play_circle_rounded,
  );

  static void toggleDarkMode() {
    backgroundColor =
        (backgroundColor == backColor) ? darkBackColor : backColor;
    modeIcon = (backgroundColor == backColor)
        ? const Icon(Icons.nightlight_round)
        : const Icon(Icons.wb_sunny_rounded);
  }
}

class ColorToggleButton extends StatefulWidget {
  final VoidCallback onPressed;

  const ColorToggleButton({super.key, required this.onPressed});

  @override
  State<ColorToggleButton> createState() => _ColorToggleButtonState();
}

class _ColorToggleButtonState extends State<ColorToggleButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: ColorsData.boxColor,
            borderRadius: BorderRadius.circular(8.0)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            icon: ColorsData.modeIcon,
            color: ColorsData.boxNumberColor,
            iconSize: 40,
            onPressed: () {
              setState(() {
                ColorsData.toggleDarkMode();
              });
              widget.onPressed();
            },
          )
        ]));
  }
}
