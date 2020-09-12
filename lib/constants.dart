import 'package:flutter/material.dart';

enum PredefinedThemes {
  success,
  successOutline,
  danger,
  dangerOutline,
  warning,
  warningOutline,
  info,
  infoOutline,
  primary,
  primaryOutline,
  secondary,
  secondaryOutline,
  dark,
  darkOutline,
  light,
  disabled,
}

List definedColors = [
  // success
  {
    "color": Color(0xFF5CB85C),
    "borderColor": Colors.black,
    "shadowColor": Colors.black,
    "blurColor": Colors.black
  },
  // successOutline
  {
    "color": Color(0xFFFAFAFA),
    "borderColor": Color(0xFF5CB85C),
    "shadowColor": Color(0xFF5CB85C),
    "blurColor": Color(0xFF5CB85C)
  },
  // danger
  {
    "color": Color(0xFFD9534F),
    "borderColor": Colors.black,
    "shadowColor": Colors.black,
    "blurColor": Colors.black
  },
  // dangerOutline
  {
    "color": Color(0xFFFAFAFA),
    "borderColor": Color(0xFFD9534F),
    "shadowColor": Color(0xFFD9534F),
    "blurColor": Color(0xFFD9534F)
  },
  // warning
  {
    "color": Color(0xFFF0AD4E),
    "borderColor": Colors.black,
    "shadowColor": Colors.black,
    "blurColor": Colors.black
  },
  // warningOutline
  {
    "color": Color(0xFFFAFAFA),
    "borderColor": Color(0xFFF0AD4E),
    "shadowColor": Color(0xFFF0AD4E),
    "blurColor": Color(0xFFF0AD4E)
  },
  // info
  {
    "color": Color(0xFF5BC0DE),
    "borderColor": Colors.black,
    "shadowColor": Colors.black,
    "blurColor": Colors.black
  },
  // infoOutline
  {
    "color": Color(0xFFFAFAFA),
    "borderColor": Color(0xFF5BC0DE),
    "shadowColor": Color(0xFF5BC0DE),
    "blurColor": Color(0xFF5BC0DE)
  },
  // primary
  {
    "color": Color(0xFF0275D8),
    "borderColor": Colors.black,
    "shadowColor": Colors.black,
    "blurColor": Colors.black
  },
  // primaryOutline
  {
    "color": Color(0xFFFAFAFA),
    "borderColor": Color(0xFF0275D8),
    "shadowColor": Color(0xFF0275D8),
    "blurColor": Color(0xFF0275D8)
  },
  // secondary
  {
    "color": Color(0xFF6B5B95),
    "borderColor": Colors.black,
    "shadowColor": Colors.black,
    "blurColor": Colors.black
  },
  // secondaryOutline
  {
    "color": Color(0xFFFAFAFA),
    "borderColor": Color(0xFF6B5B95),
    "shadowColor": Color(0xFF6B5B95),
    "blurColor": Color(0xFF6B5B95)
  },
  // dark
  {
    "color": Color(0xFF292B2C),
    "borderColor": Colors.black,
    "shadowColor": Colors.black,
    "blurColor": Colors.black
  },
  // darkOutline
  {
    "color": Color(0xFFFAFAFA),
    "borderColor": Color(0xFF292B2C),
    "shadowColor": Color(0xFF292B2C),
    "blurColor": Color(0xFF292B2C)
  },
  {
    "color": Color(0xFFF7F7F7),
    "borderColor": Colors.black,
    "shadowColor": Colors.black,
    "blurColor": Colors.black
  },
  {
    "color": Color(0xFFBFBFC4),
    "borderColor": Colors.black,
    "shadowColor": Colors.black,
    "blurColor": Colors.black
  }
];
