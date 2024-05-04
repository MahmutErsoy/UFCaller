import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ufc_caller/core/base/base_view.dart';
import 'package:ufc_caller/core/components/global_widgets/bottom_bar.dart';
import 'package:ufc_caller/views/main_screen/main_view_model.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _HomeViewState();
}

class _HomeViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<MainViewModel>(
      viewModel: Provider.of<MainViewModel>(context, listen: false),
      onModelReady: (model) async {
        model.setContext(context);
        await model.init();
      },
      pageBuilder: (context, viewModel, _) => Scaffold(
        body: viewModel.widgetOptions.elementAt(viewModel.currentIndex),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: viewModel.currentIndex,
          onTap: viewModel.navigateTo,
        ),
      ),
    );
  }
}
