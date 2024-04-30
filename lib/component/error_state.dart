import 'package:flutter/material.dart';
import 'package:sarmad_task/utilies/app_strings.dart';

class ErorrState extends StatelessWidget {
  const ErorrState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(AppStrings.errorState),
    );
  }
}
