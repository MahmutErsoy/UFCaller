import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ufc_caller/core/base/base_view.dart';
import 'package:ufc_caller/core/constants/app_constants.dart';
import 'package:ufc_caller/views/home_screen/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: Provider.of<HomeViewModel>(context, listen: false),
      onModelReady: (model) async {
        model.setContext(context);
        await model.init();
      },
      pageBuilder: (context, viewModel, _) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppConstants.appPagePadding,
            ),
            child: const Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
