
import 'package:build_out/features/category_select/view_model/category_select_view_model.dart';
import 'package:build_out/features/master_screen/view_model/master_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
List<SingleChildWidget> providers = [
  ChangeNotifierProvider<CategorySelectViewModel>(create: (_) => CategorySelectViewModel()),

  ChangeNotifierProvider<MasterViewModel>(create: (_) => MasterViewModel()),






];
