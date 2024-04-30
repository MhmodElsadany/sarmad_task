import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sarmad_task/component/data_list.dart';
import 'package:sarmad_task/component/edit_text_custom.dart';
import 'package:sarmad_task/component/empty_state.dart';
import 'package:sarmad_task/component/error_state.dart';
import 'package:sarmad_task/component/show_loading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/ui/filter_data_bottom_sheet.dart';
import 'package:sarmad_task/utilies/app_colors.dart';
import 'package:sarmad_task/utilies/app_strings.dart';
import '../bloc/bloc_data_people.dart';

enum ViewType { grid, list }

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});


  ValueNotifier<ViewType> _viewType = ValueNotifier<ViewType>(ViewType.list);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          toolbarHeight: 60.h,
          backgroundColor: AppColors.primary,
          title: InkWell(
              onTap: (){
                showMaterialModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    // expand: true,
                    builder: (context) => SearchData(
                    ));
              },
              child:Center(
                child: Container(
                  height: 40.h,
                  margin: EdgeInsets.only(top: 2.h),
                  child: EditTextCustom(
                    label: AppStrings.search,
                    enable:false,
                  ),
                ),
              ),

          ),
          actions: [
            IconButton(
              icon: ValueListenableBuilder<ViewType>(
                  valueListenable: _viewType,
                  builder: (context, value, child) {
                    return Icon(_viewType.value == ViewType.list
                        ? Icons.grid_on
                        : Icons.view_list,color: Colors.white,);
                  }),
              onPressed: () {
                if (_viewType.value == ViewType.list) {
                  _viewType.value = ViewType.grid;
                } else {
                  _viewType.value = ViewType.list;
                }
              },
            )
          ],
        ),
        body: BlocBuilder<peopleDataBloc, peopleDataState>(
            builder: (context, state) {
          if (state is LoadingpeopleDataState) {
            return Center(child: ShowLoading());
          } else if (state is LoadedpeopleDataState) {
            return Container(
                child: ValueListenableBuilder<ViewType>(
                    valueListenable: _viewType,
                    builder: (context, value, child) {
                      return Container(
                          margin: EdgeInsets.all(10.h),
                          child: (_viewType.value == ViewType.list)
                              ? ListView.builder(
                                  itemCount:
                                      state.model?.screenResult?.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return PostsList(mModel: state.model!.screenResult![index],);
                                  },
                                )
                              :

                          GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15.w,
                          crossAxisSpacing: 15.h,
                          childAspectRatio: 1,
                        ),
                        // return a custom ItemCard
                        itemBuilder: (context, index) =>  PostsList(mModel: state.model!.screenResult![index],typeGrid: true,),
                        itemCount:  state.model!.screenResult!.length,
                      )
                      );


                    }));
          } else if (state is LoadedpeopleDataIsEmptyState) {
            return PostsListEmpty();
          } else {
            return ErorrState();
          }
        }));
  }
}
