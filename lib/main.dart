import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metabank/core/constants/colors.dart';
import 'package:metabank/core/utils/routes.dart';
import 'package:metabank/features/authentication/presentation/pages/splashscreen/splash_screen.dart';
import 'package:metabank/injection_container.dart' as dl;
import 'injection_container.dart';

import 'package:metabank/features/authentication/presentation/bloc/authentication_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dl.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (context) => sl<AuthenticationBloc>(),
      child: MaterialApp(
        title: 'Metabank',
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          scaffoldBackgroundColor: AppColors.primaryDarkColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: _createRoutes(),
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.splashScreen,
      ),
    );
  }

  Map<String, WidgetBuilder> _createRoutes() {
    return {
      AppRoutes.splashScreen: (context) => const SplashScreen(),
      AppRoutes.signIn: (context) => const SplashScreen(),
    };
  }
}
