import 'package:build_out/features/master_screen/view/screens/home/home_screen.dart';
import 'package:build_out/features/master_screen/view/screens/offers/offer_screen.dart';
import 'package:build_out/features/master_screen/view/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/master_view_model.dart';
import 'master_bottom_bar.dart';
import 'screens/home/sections/drawer_section.dart';
import 'screens/market/market_screen.dart';

class MasterScreen extends StatelessWidget {
  static const route = '/master-screen';
  const MasterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MasterViewModel masterViewModel = context.watch<MasterViewModel>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const DrawerSection(),
      body: IndexedStack(
        index: masterViewModel.selectedIndex,
        children: const [
          HomeScreen(),
          OfferScreen(),
          MarketScreen(),
          ProfileScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: const MasterBottomBar(),
    );
  }
}
