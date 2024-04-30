import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/bloc/bloc_data_people.dart';
import 'package:sarmad_task/component/search_item.dart';
import 'package:sarmad_task/utilies/app_colors.dart';
import 'package:sarmad_task/utilies/app_strings.dart';

class SearchData extends StatefulWidget {
  SearchData({Key? key}) : super(key: key);

  @override
  State<SearchData> createState() => _SearchDataState();
}

class _SearchDataState extends State<SearchData> {
  TextEditingController searchCtrlFname = TextEditingController();

  TextEditingController searchCtrlmname = TextEditingController();

  TextEditingController searchCtrlnat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 70.h),
        decoration: new BoxDecoration(
            color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
            borderRadius: new BorderRadius.only(
                topLeft: Radius.circular(10.r),
                topRight: Radius.circular(10.r),
                bottomLeft: Radius.circular(10.r),
                bottomRight: Radius.circular(10.r))),
        height: MediaQuery.of(context).size.height * .5,
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Center(
          child: Stack(
            children:[ Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SearchItem(
                    label: AppStrings.fnameSearch,
                    textEditingController: searchCtrlFname,
                    onPress: () {
                      BlocProvider.of<peopleDataBloc>(context).add(
                          LoadpeopleDataEvent(
                              fname: searchCtrlFname.text, mname: "", nat: ""));
                      Navigator.pop(context);
                    }),
                SizedBox(
                  height: 12.h,
                ),
                SearchItem(
                    label: AppStrings.mnameSearch,
                    textEditingController: searchCtrlmname,
                    onPress: () {
                      BlocProvider.of<peopleDataBloc>(context).add(
                          LoadpeopleDataEvent(
                              mname: searchCtrlmname.text, fname: "", nat: ""));
                      Navigator.pop(context);
                    }),
                SizedBox(
                  height: 12.h,
                ),
                SearchItem(
                    label: AppStrings.natSearch,
                    textEditingController: searchCtrlnat,
                    onPress: () {
                      BlocProvider.of<peopleDataBloc>(context).add(
                          LoadpeopleDataEvent(
                              nat: searchCtrlnat.text, mname: "", fname: ""));
                      Navigator.pop(context);
                    }),
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      BlocProvider.of<peopleDataBloc>(context).add(
                          LoadpeopleDataEvent(
                              mname: searchCtrlmname.text,
                              fname: searchCtrlFname.text,
                              nat: searchCtrlnat.text));
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xFF005070),
                      ),
                      child: Text(
                        AppStrings.searchByAll,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.sp,
                          fontFamily: "meduim",
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),Positioned(
                top: 20.h,
                child: InkWell(onTap: (){
              Navigator.pop(context);
            },child: Icon(Icons.close,size: 20,color: AppColors.grey,),))
            ],
          ),
        ),
      ),
    );
  }
}
