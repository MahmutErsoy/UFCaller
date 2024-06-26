import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ufc_caller/core/base/base_view.dart';
import 'package:ufc_caller/core/constants/app_constants.dart';
import 'package:ufc_caller/views/alarm_screen/alarm_view_model.dart';

class AlarmView extends StatelessWidget {
  const AlarmView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<AlarmViewModel>(
      viewModel: Provider.of<AlarmViewModel>(context, listen: false),
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
              child: Center(
                child: Text("ALARM", style: Theme.of(context).textTheme.headline1),
              )),
        ),
      ),
    );
  }
}
