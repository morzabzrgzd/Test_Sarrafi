import 'package:flutter/cupertino.dart';

class BnbModel {
  final Icon icon;
  final Icon activrIcon;
  final String text;

  BnbModel({required this.icon, required this.text, required this.activrIcon});
}

List<BnbModel> bottomNavigationBarItems = <BnbModel>[
  BnbModel(
    activrIcon: const Icon(CupertinoIcons.house_alt_fill),
    icon: const Icon(CupertinoIcons.house_alt),
    text: 'Home',
  ),
  BnbModel(
    activrIcon: const Icon(CupertinoIcons.check_mark_circled_solid),
    icon: const Icon(CupertinoIcons.check_mark_circled),
    text: 'Markets',
  ),
  BnbModel(
    activrIcon: const Icon(CupertinoIcons.film),
    icon: const Icon(CupertinoIcons.film_fill),
    text: 'Spot',
  ),
  BnbModel(
    activrIcon: const Icon(CupertinoIcons.alarm_fill),
    icon: const Icon(CupertinoIcons.alarm),
    text: 'Futures',
  ),
  BnbModel(
    icon: const Icon(CupertinoIcons.person_2),
    activrIcon: const Icon(CupertinoIcons.person_2_alt),
    text: 'Copy Trading',
  ),
  BnbModel(
    activrIcon: const Icon(CupertinoIcons.bag_fill),
    icon: const Icon(CupertinoIcons.bag),
    text: 'Assets',
  ),
];
