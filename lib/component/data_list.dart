import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/model/model_datapeople.dart';
import 'package:sarmad_task/utilies/app_colors.dart';
import 'package:sarmad_task/utilies/app_strings.dart';

class PostsList extends StatelessWidget {
  PostsList({super.key, required this.mModel, this.typeGrid = false});

  final ScreenResult mModel;
  final bool typeGrid;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 2,
                color: AppColors.white,
              )
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          margin: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      mModel.name.toString(),
                      maxLines: typeGrid ? 2 : 1,
                      style: TextStyle(
                          fontFamily: "meduim",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.greyTxt),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    padding: EdgeInsets.all(5.h),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    child: Text(
                      mModel.score.toString(),
                      style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: "bold",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: (mModel.descriptions)!
                      .map(
                        (item) => Text(
                          item.description1.toString() +
                              "-" +
                              item.description2.toString() +
                              "-" +
                              item.description3.toString(),
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: "regular",
                              fontWeight: FontWeight.w500),
                        ),
                      )
                      .toList(),
                ),
              ),

              SizedBox(
                height: 5.h,
              ),
              mModel.placesOfBirth!.isEmpty?Text("-",  style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: "regular",
                  fontWeight: FontWeight.w500),): SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: (mModel.placesOfBirth)!
                      .map(
                        (item) => Text(
                      item,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "regular",
                          fontWeight: FontWeight.w500),
                    ),
                  )
                      .toList(),
                ),
              ),


              SizedBox(
                height: 5.h,
              ),
              Text(
                mModel.nat.toString(),
                maxLines: 1,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: "meduim",
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ));
  }
}
