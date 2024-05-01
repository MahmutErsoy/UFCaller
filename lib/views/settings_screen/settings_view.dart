import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ufc_caller/core/base/base_view.dart';
import 'package:ufc_caller/core/constants/app_constants.dart';
import 'package:ufc_caller/views/settings_screen/settings_view_model.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SettingsViewModel>(
      viewModel: Provider.of<SettingsViewModel>(context, listen: false),
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
