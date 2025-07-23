import 'dart:developer';
import 'package:admin_v2/features/auth/cubit/auth_cubit.dart';
import 'package:admin_v2/features/auth/domain/models/auth_response.dart';
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/shared/app/enums/api_fetch_status.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/routes/routes.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:admin_v2/shared/widgets/buttons/custom_material_button.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:admin_v2/shared/widgets/text_fields/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) async {
          if (state.isLoading == ApiFetchStatus.success) {
            log('Success');
            await AuthUtils.instance.writeUserData(
              state.authResponse ?? AuthResponse(),
            );
            await AuthUtils.instance.writeAccessTokens(
              state.authResponse?.user?.token ?? '',
            );

            Future.delayed(const Duration(milliseconds: 200));
           Future.delayed(const Duration(milliseconds: 200));
            context.read<DashboardCubit>().store();
            context.read<DashboardCubit>().loadOrderGraph();
            context.read<DashboardCubit>().loadRevenueGraph();

            context.push(routeMain);
            //chilliesdg@gmail.com
            //admin@resto.com
          }
        },
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                  // bottom: 50.0,
                  left: 60.0,
                  right: 50.0,
                ),
                child: SvgPicture.asset(
                  'assets/icons/Logo.svg',
                  color: kPrimaryColor,
                  height: 50.h,
                  width: 70.w,
                ),
              ),
              Divider(
                color: kPrimaryColor,
                endIndent: 80.w,
                indent: 140.w,
                thickness: 2.h,
              ),
              MainPadding(
                top: 10.h,
                child: Column(
                  spacing: 12.h,
                  children: [
                    TextFeildWidget(
                      controller: emailController,
                      borderColor: kBlack,
                      hight: 48.h,
                      fillColor: kWhite,
                      inputBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                      ),

                      hintText: 'User name',
                    ),
                    TextFeildWidget(
                      controller: passwordController,
                      borderColor: kBlack,
                      hight: 48.h,
                      fillColor: kWhite,
                      inputBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: Color(0XFFB7C6C2)),
                      ),

                      hintText: 'Password',
                    ),
                    CustomMaterialBtton(
                      isLoading: ApiFetchStatus.loading == state.isLoading,
                      onPressed: () {
                        context.read<AuthCubit>().authSigIn(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
