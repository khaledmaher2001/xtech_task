import 'package:flutter/material.dart';
import 'package:xtech_task/core/utils/constants.dart';

class HomeListItem extends StatelessWidget {
  const HomeListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
          horizontal: AppConstants.width20(context), vertical: AppConstants.height15(context)),
      margin: EdgeInsetsDirectional.symmetric(horizontal: AppConstants.width20(context)),
      decoration:
          BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(AppConstants.sp15(context))),
      child: Row(
        children: [
          CircleAvatar(
            radius: AppConstants.width5(context),
            backgroundColor: Colors.green.withOpacity(0.4),
          ),
          SizedBox(width: AppConstants.width10(context)),
          Expanded(
            child: Text(
              "Arabic Exam",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * .018,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            "8:00 am - 10:00 am",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * .016,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
