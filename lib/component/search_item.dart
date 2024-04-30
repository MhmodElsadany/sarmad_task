import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/component/edit_text_custom.dart';
import 'package:sarmad_task/utilies/app_colors.dart';
import 'package:sarmad_task/utilies/app_strings.dart';

class SearchItem extends StatelessWidget {
  SearchItem({Key? key, required this.label, required this.textEditingController, this.onPress}) : super(key: key);
final String label;
  final TextEditingController textEditingController;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0.sp),
      //padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: AppColors.boxwhite,
        borderRadius: BorderRadius.circular(6),
      ),
      child: EditTextCustom(
        label: label,
        mTextEditingController: textEditingController,
        prefix: InkWell(
          onTap: onPress,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10.0.sp, horizontal: 8.0.sp),
            decoration: BoxDecoration(
              color:const Color(0xFF005070),
              borderRadius: BorderRadius.all(Radius.circular(24.0.sp)),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 1,
                  color: AppColors.textGrayColor,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.sp),
                  child: Text(AppStrings.search,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.sp,
                        fontFamily: "meduim",
                      ),
                      textAlign: TextAlign.center),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}