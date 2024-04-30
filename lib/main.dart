import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/bloc/bloc_data_people.dart';
import 'package:sarmad_task/utilies/app_strings.dart';

import 'ui/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
   
  @override
  Widget build(BuildContext context) {
    return BlocProvider<peopleDataBloc>(
        create: (context) => peopleDataBloc()..add(LoadpeopleDataEvent(
      // default values
      fname: 'Mohamed',
      mname: "Ibrahem",
      nat: "Egypt",
    ),),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            title: AppStrings.appName,
            debugShowCheckedModeBanner: false,

            theme: ThemeData(

              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home:HomeScreen(),
          );
        },

      ),
    );
  }
}

