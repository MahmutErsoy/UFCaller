import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:ufc_caller/views/alarm_screen/alarm_view_model.dart';
import 'package:ufc_caller/views/home_screen/home_view_model.dart';
import 'package:ufc_caller/views/login_screen/login_view_model.dart';
import 'package:ufc_caller/views/main_screen/main_view_model.dart';
import 'package:ufc_caller/views/search_screen/search_view_model.dart';
import 'package:ufc_caller/views/settings_screen/settings_view_model.dart';
import 'package:ufc_caller/views/signUp_screen/signUp_view_model.dart';
import 'package:ufc_caller/views/splash_screen/splash_view_model.dart';

class ProviderManager {
  static ProviderManager? _instance;
  static ProviderManager get instance {
    _instance ??= ProviderManager._init();
    return _instance!;
  }

  ProviderManager._init();
  List<SingleChildWidget> singleProvider = [
    ChangeNotifierProvider<SignUpViewModel>(
      create: (_) => SignUpViewModel(),
    ),
    ChangeNotifierProvider<SplashViewModel>(
      create: (_) => SplashViewModel(),
    ),
    ChangeNotifierProvider<SettingsViewModel>(
      create: (_) => SettingsViewModel(),
    ),
    ChangeNotifierProvider<SearchViewModel>(
      create: (_) => SearchViewModel(),
    ),
    ChangeNotifierProvider<LoginViewModel>(
      create: (_) => LoginViewModel(),
    ),
    ChangeNotifierProvider<HomeViewModel>(
      create: (_) => HomeViewModel(),
    ),
    ChangeNotifierProvider<AlarmViewModel>(
      create: (_) => AlarmViewModel(),
    ),
    ChangeNotifierProvider<MainViewModel>(
      create: (_) => MainViewModel(),
    ),
  ];
}
