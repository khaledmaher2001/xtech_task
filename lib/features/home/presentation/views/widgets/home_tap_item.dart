import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xtech_task/core/utils/colors/colors.dart';
import 'package:xtech_task/features/home/presentation/view_models/change_tabs_cubit/change_tabs_cubit.dart';
import 'package:xtech_task/features/home/presentation/view_models/change_tabs_cubit/change_tabs_states.dart';
import '../../../../../core/utils/constants.dart';


class HomeTapItem extends StatelessWidget {
  const HomeTapItem({super.key, required this.title, this.onTap, required this.index});

  final Function()? onTap;
  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeTabsCubit,ChangeTabsStates>(
      builder: (context,state) {
        return InkWell(
          onTap: onTap,
          child: Container(
            alignment: AlignmentDirectional.center,
            padding: EdgeInsets.symmetric(
                horizontal: AppConstants.width15(context), vertical: AppConstants.height15(context)),
            decoration: BoxDecoration(
                color:
                    context.read<ChangeTabsCubit>().selectedTab == index ? AppColors.primaryColor : Colors.white,
                borderRadius: BorderRadius.circular(AppConstants.width5(context)),
                border: Border.all(color: const Color(0xffF1F5F9)),
                boxShadow: context.read<ChangeTabsCubit>().selectedTab == index
                    ? null
                    : [
                        const BoxShadow(
                          color: Color(0xffF1F5F9),
                          blurRadius: 8,
                          spreadRadius: 0,
                          offset: Offset(0, 8),
                        )
                      ]),
            child: Text(
              title,
              style: TextStyle(
                color:
                    context.read<ChangeTabsCubit>().selectedTab == index ? Colors.white : const Color(0xff171923),
                fontSize: MediaQuery.of(context).size.height * .014,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      }
    );
  }
}
