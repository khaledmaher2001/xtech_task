import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xtech_task/core/utils/constants.dart';
import 'package:xtech_task/features/home/presentation/view_models/change_tabs_cubit/change_tabs_cubit.dart';
import 'package:xtech_task/features/home/presentation/views/widgets/home_tap_item.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: HomeTapItem(
              title: 'Overview',
              onTap: () {
                context.read<ChangeTabsCubit>().changeTabs(0);
              },
              index: 0,
            ),
          ),
          SizedBox(
            width: AppConstants.width5(context),
          ),
          Expanded(
            child: HomeTapItem(
              title: 'Schedule',
              onTap: () {
                context.read<ChangeTabsCubit>().changeTabs(1);
              },
              index: 1,
            ),
          ),
          SizedBox(
            width: AppConstants.width5(context),
          ),
          Expanded(
            child: HomeTapItem(
              title: 'Progress',
              onTap: () {
                context.read<ChangeTabsCubit>().changeTabs(2);
              },
              index: 2,
            ),
          ),
        ],
      ),
    );
  }
}
