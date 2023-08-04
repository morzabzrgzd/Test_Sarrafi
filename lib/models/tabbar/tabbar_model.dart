class TabbarModel {
  final String text;

  TabbarModel({required this.text});
}

List<TabbarModel> tabbarItems = <TabbarModel>[
  TabbarModel(text: 'Overview'),
  TabbarModel(text: 'Funds'),
  TabbarModel(text: 'Futures'),
  TabbarModel(text: 'Copy Trading'),
  TabbarModel(text: 'Spot'),
  TabbarModel(text: 'Market'),
];
