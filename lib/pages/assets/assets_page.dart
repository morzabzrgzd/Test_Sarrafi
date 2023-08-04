import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:test_sarrafi/controllers/assets/assets_ctrl.dart';
import 'package:test_sarrafi/models/tabbar/tabbar_model.dart';
import 'components/assets_items.dart';
import 'components/assets_list_data_items.dart';
import 'components/pnlanalysis_widget.dart';
import 'components/trailing_for_data_items.dart';

class AssetsPage extends StatelessWidget {
  const AssetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var assetCtrl = Get.put(AssetsController());
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 6,
          child: Column(
            children: [
              TabBar(
                splashBorderRadius: BorderRadius.circular(5),
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 5,
                  top: 10,
                ),
                labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                isScrollable: true,
                tabs: List.generate(
                  tabbarItems.length,
                  (index) => Tab(
                    text: tabbarItems[index].text,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Total Assets Value (USDT)',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Obx(
                            () => PopupMenuButton(
                              onOpened: () {
                                log('open');
                                assetCtrl.openPopMenu();
                              },
                              onCanceled: () {
                                log('cancel');
                                assetCtrl.cancelPopMenu();
                              },
                              icon: Icon(
                                assetCtrl.animatedIcon.value == false
                                    ? Icons.arrow_drop_down
                                    : Icons.arrow_drop_up,
                              ),
                              itemBuilder: (context) {
                                return [
                                  const PopupMenuItem(
                                    child: Text(
                                      'USDT',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xff255DFE),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  const PopupMenuItem(
                                    child: Text(
                                      'BTC',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                log(value.toString());
                              },
                            ),
                          ),
                          const Icon(
                            FeatherIcons.eye,
                            size: 18,
                          ),
                        ],
                      ),
                      const Text(
                        '13.91',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const PnlanalysisWidget(),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          AssetsItems(
                            icon: FeatherIcons.logOut,
                            title: 'Deposit',
                          ),
                          SizedBox(width: 10),
                          AssetsItems(
                            icon: FeatherIcons.logIn,
                            title: 'Withdraw',
                          ),
                          SizedBox(width: 10),
                          AssetsItems(
                            icon: FeatherIcons.triangle,
                            title: 'Transfer',
                          ),
                          SizedBox(width: 10),
                          AssetsItems(
                            icon: FeatherIcons.playCircle,
                            title: 'Convert',
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      AssetsListDataItems(
                        trailing: const TrailingForDataItems(
                          price: '0.00',
                          subTitle: '51.08.د =',
                        ),
                        onTap: () {},
                        title: 'Fund Account',
                      ),
                      const SizedBox(height: 10),
                      AssetsListDataItems(
                        trailing: const TrailingForDataItems(
                          price: '13.91',
                          subTitle: '0.00.د =',
                        ),
                        onTap: () {},
                        title: 'Futures Account',
                      ),
                      const SizedBox(height: 10),
                      AssetsListDataItems(
                        trailing: const TrailingForDataItems(
                          price: '0.00',
                          subTitle: '0.00.د =',
                        ),
                        onTap: () {},
                        title: 'Copy Trading',
                      ),
                      const SizedBox(height: 10),
                      AssetsListDataItems(
                        trailing: const TrailingForDataItems(
                          price: '0.00',
                          subTitle: '0.08.د =',
                        ),
                        onTap: () {},
                        title: 'Grid Account',
                      ),
                      const SizedBox(height: 10),
                      AssetsListDataItems(
                        trailing: const Text(
                          'Click to see',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {},
                        title: 'NFT Shares',
                      ),
                      const SizedBox(height: 50)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
