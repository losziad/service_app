import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/core/utils/styles.dart';
import 'package:service_app/features/home/presention/layout/cubit/cubit.dart';
import 'package:service_app/features/home/presention/layout/cubit/states.dart';
import 'package:service_app/features/home/presention/layout/service_layout_screen.dart';
import 'package:service_app/features/home/presention/widgets/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context) => ServiceCubit(),
      child: BlocConsumer<ServiceCubit, ServiceStates>(
        listener: (context, state) {

        },
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            home: OnBoardingScreen(),
          );
        },
      ),
    );
  }
}


