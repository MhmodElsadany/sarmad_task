import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/utilies/app_colors.dart';

class EditTextCustom extends StatefulWidget {
  final TextEditingController? mTextEditingController;
  final String? label;
  final int? height;
  final Widget? prefix;
  final bool enable;

  final bool startsWithUpperCase;
  EditTextCustom(
      {Key? key,
        this.mTextEditingController,
        this.height,
        this.label,
        this.prefix,
        this.enable=true,
        this.startsWithUpperCase = false,
      })
      : super(key: key);

  @override
  _EditTextCustomState createState() => _EditTextCustomState();
}

class _EditTextCustomState extends State<EditTextCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.done,

      style: TextStyle(color: AppColors.textColor, fontFamily: "meduim", fontSize: 14.sp),
      enabled: widget.enable,
      maxLines: widget.height ?? 1,
      controller: widget.mTextEditingController,
      decoration: InputDecoration(
        suffixIcon:  widget.prefix,

        contentPadding:
        EdgeInsets.symmetric(horizontal: 12.sp, vertical: 10.sp),
        hintText: widget.label,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffF6F6F6), width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintStyle:
        TextStyle(color: AppColors.colorGrey, fontFamily: "meduim", fontSize: 14.sp),
        fillColor: Color(0xffF6F6F6),
        focusColor: Color(0xffF6F6F6),
        hoverColor: Color(0xffF6F6F6),
        filled: true,
      ),

    );
  }
}