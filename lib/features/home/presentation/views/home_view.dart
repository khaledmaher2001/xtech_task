import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xtech_task/features/home/presentation/view_models/change_tabs_cubit/change_tabs_cubit.dart';
import 'package:xtech_task/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeTabsCubit(),
      child: const Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        body: HomeViewBody(),
      ),
    );
  }
}
