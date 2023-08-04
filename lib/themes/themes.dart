import 'package:flutter/material.dart';

class MyThemes {
  static final lighTheme = ThemeData(
    // fontFamily: 'Dana',
    useMaterial3: true,
    primaryColor: const Color(0xff6200ee),
    scaffoldBackgroundColor: const Color(0xffffffff),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff3700b3),
        titleTextStyle: TextStyle(
          color: Colors.white,
        ),
        actionsIconTheme: IconThemeData(color: Colors.white)
        // backgroundColor: Color(0xffbb86fc),
        ),
    popupMenuTheme: PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 3,
      position: PopupMenuPosition.under,
      surfaceTintColor: Colors.white,
      shadowColor: Colors.grey.shade200,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.grey.shade400),
      bodyMedium: const TextStyle(color: Colors.black),
    ),
    scrollbarTheme: ScrollbarThemeData(
      thickness: MaterialStateProperty.all(4),
      thumbColor: MaterialStateProperty.all(Colors.grey),
    ),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: Colors.grey,
      splashFactory: InkRipple.splashFactory,
      labelColor: Colors.black,
      // dividerColor: Colors.amber,
      unselectedLabelStyle:
          TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
      labelStyle: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
      indicatorColor: Colors.transparent,
      labelPadding: EdgeInsets.symmetric(horizontal: 8),
    ),
    splashColor: Colors.black.withOpacity(.2),
    hoverColor: Colors.black.withOpacity(.2),
    highlightColor: Colors.black.withOpacity(.2),
    colorScheme: ColorScheme.light(
      secondary: Colors.grey.shade300,
      primary: Colors.black54,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Color(0xff255DFE),
      // elevation: 10,

      selectedLabelStyle: TextStyle(fontSize: 13, height: 2),
      unselectedLabelStyle: TextStyle(fontSize: 13, height: 2),

      selectedIconTheme: IconThemeData(
        color: Color(0xff255DFE),
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.black54,
      ),
      unselectedItemColor: Colors.grey,
    ),
  );
}
