import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xtech_task/core/utils/colors/colors.dart';
import '../utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      this.prefixIcon,
      required this.title,
      this.suffixIcon,
      this.suffixIconSize,
      this.suffixIconTap,
      this.prefixIconTap,
      this.hasTitleNotIcon = false,
      this.subTitle,
      this.onTitleTap});

  final String? prefixIcon;
  final String title;
  final String? suffixIcon;
  final String? subTitle;
  final bool? hasTitleNotIcon;
  final double? suffixIconSize;
  final Function()? suffixIconTap;
  final Function()? onTitleTap;
  final Function()? prefixIconTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.width20(context),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height * .02,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          if (suffixIcon != null && !hasTitleNotIcon!)
            PositionedDirectional(
                end: 0,
                child: InkWell(
                    onTap: suffixIconTap,
                    child: SvgPicture.asset(
                      suffixIcon!,
                      width: suffixIconSize ?? MediaQuery.of(context).size.height * .06,
                    ))),
          if (hasTitleNotIcon!)
            PositionedDirectional(
              end: 0,
              child: InkWell(
                  onTap: onTitleTap,
                  child: Text(
                    subTitle!,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * .016,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  )),
            ),
        ],
      ),
    );
  }
}
