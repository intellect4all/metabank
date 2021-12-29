import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metabank/core/common_widgets/expanded_button.dart';
import 'package:metabank/core/common_widgets/logo_row.dart';
import 'package:metabank/core/utils/custom_extensions.dart';
import 'package:metabank/core/utils/routes.dart';
import 'package:metabank/features/authentication/presentation/bloc/authentication_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      _addEventToBloc(AppLoadedEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if (state is AuthenticationStartedEvent) {
              Navigator.popAndPushNamed(context, AppRoutes.signIn);
            }
          },
          buildWhen: (previous, current) =>
              current is! AuthenticationStartedEvent,
          builder: (context, state) {
            if (state is UnauthenticatedState) {
              return Column(
                children: [
                  const LogoRow().space(top: 200),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  ExpandedButton(
                    text: 'Get started',
                    onPressed: () {
                      _addEventToBloc(AppStartedEvent());
                    },
                  ).space(bottom: 50),
                ],
              );
            } else {
              return const Center(
                child: LogoRow(),
              );
            }
          },
        ).space(
          left: 20,
          right: 20,
        ),
      ),
    );
  }

  void _addEventToBloc(AuthenticationEvent event) {
    BlocProvider.of<AuthenticationBloc>(context).add(event);
  }
}
