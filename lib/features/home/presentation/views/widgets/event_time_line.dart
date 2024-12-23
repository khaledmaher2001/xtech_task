import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:xtech_task/core/utils/colors/colors.dart';
import 'package:xtech_task/core/utils/constants.dart';

class EventTimeLine extends StatefulWidget {
  const EventTimeLine({super.key, this.hasSwapper = false, this.onTap});

  final bool? hasSwapper;
  final Function(DateTime)? onTap;

  @override
  State<EventTimeLine> createState() => _EventTimeLineState();
}

class _EventTimeLineState extends State<EventTimeLine> {
  late DateTime _focusDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.hasSwapper!)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        if (DateTime(_focusDate.year, _focusDate.month, _focusDate.day - 1)
                            .isAfter(DateTime(2024, 11, 30))) {
                          _focusDate = DateTime(_focusDate.year, _focusDate.month, _focusDate.day - 1);
                        }
                      });
                      // widget.onTap!(_focusDate);
                      print(_focusDate);
                    },
                    child: Container(
                      padding: EdgeInsets.all(AppConstants.sp10(context)),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, border: Border.all(color: const Color(0xffCBD5E1))),
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: AppConstants.sp15(context),
                      ),
                    )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${DateFormat('EEEE').format(_focusDate)},${_focusDate.day}",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .018, fontWeight: FontWeight.w600),
                    ),
                  ],
                )),
                InkWell(
                    onTap: () {
                      setState(() {
                        if (DateTime(_focusDate.year, _focusDate.month, _focusDate.day + 1)
                            .isBefore(DateTime(2025, 01, 01))) {
                          _focusDate = DateTime(_focusDate.year, _focusDate.month, _focusDate.day + 1);
                        }
                      });
                      // widget.onTap!(_focusDate);
                    },
                    child: Container(
                      padding: EdgeInsets.all(AppConstants.sp10(context)),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, border: Border.all(color: const Color(0xffCBD5E1))),
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: AppConstants.sp15(context),
                      ),
                    )),
              ],
            ),
          ),
        if (widget.hasSwapper!)
          SizedBox(
            height: AppConstants.height20(context),
          ),
        EasyDateTimeLine(
          initialDate: DateTime.now(),
          onDateChange: (selectedDate) {
            setState(() {
              _focusDate = selectedDate;
              // widget.onTap!(selectedDate);
            });
          },
          // locale: CacheKeysManger.getUserLanguageFromCache(),
          headerProps: EasyHeaderProps(
              selectedDateFormat: SelectedDateFormat.fullDateDMonthAsStrY,
              showHeader: false,
              // monthPickerType: MonthPickerType.switcher,
              selectedDateStyle: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * .018,
                  fontWeight: FontWeight.w600)),
          dayProps: EasyDayProps(
            height: MediaQuery.of(context).size.height * .08,
            width: MediaQuery.of(context).size.width * .16,
          ),
          itemBuilder: (BuildContext context, DateTime date, bool isSelected, void Function() onTap) {
            String dayNumber = date.day.toString();
            String dayName = DateFormat('EEEE').format(date); // For full day name

            return InkWell(
              onTap: onTap,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .15,
                    height: MediaQuery.of(context).size.height * .075,
                    padding: EdgeInsets.symmetric(horizontal: AppConstants.width10(context)),
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.primarySwatchColor : Colors.white,
                      borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0D364A63),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(0, 1),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          dayNumber,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * .014,
                            fontWeight: FontWeight.w600,
                            color: isSelected ? Colors.white : const Color(0xff848A94),
                          ),
                        ),
                        SizedBox(height: AppConstants.height10(context)),
                        Text(
                          dayName.substring(0, 3).toUpperCase(),
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * .012,
                            fontWeight: FontWeight.w600,
                            color: isSelected ? Colors.white : const Color(0xff848A94),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
