import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/master_view_model.dart';
import 'master_bottom_bar.dart';

class MasterScreen extends StatelessWidget {
  static const route ='/master-screen';
  const MasterScreen({super.key});

  @override
  Widget build(BuildContext context) {
 MasterViewModel masterViewModel = context.watch<MasterViewModel>();
    return Scaffold(
      body: IndexedStack(
        index: masterViewModel.selectedIndex,
        children: const [
        ],
      ),
      bottomNavigationBar: const MasterBottomBar(),
    );
  }
}