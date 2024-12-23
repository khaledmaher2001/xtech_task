import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xtech_task/core/utils/assets/assets.dart';
import 'package:xtech_task/core/utils/constants.dart';
import 'package:xtech_task/features/home/presentation/views/widgets/event_time_line.dart';
import 'package:xtech_task/features/home/presentation/views/widgets/home_list_item.dart';
import 'package:xtech_task/features/home/presentation/views/widgets/home_tab_bar.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppConstants.height30(context),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi Khaled,',
                          style: TextStyle(
                            color: const Color(0xff041631),
                            fontSize: MediaQuery.of(context).size.height * .018,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Let’s track what you want",
                          style: TextStyle(
                            color: const Color(0xff171923),
                            fontSize: MediaQuery.of(context).size.height * .014,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(AssetData.bell),
                ],
              ),
            ),
            SizedBox(height: AppConstants.height20(context)),
            const HomeTabBar(),
            SizedBox(height: AppConstants.height20(context)),
            const EventTimeLine(
              hasSwapper: true,
            ),
            SizedBox(height: AppConstants.height20(context)),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => const HomeListItem(),
                separatorBuilder: (context, index) => SizedBox(
                      height: AppConstants.height15(context),
                    ),
                itemCount: 6),
          ],
        ),
      ),
    );
  }
}
