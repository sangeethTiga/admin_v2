import 'package:admin_v2/features/common/cubit/common_cubit.dart';
import 'package:admin_v2/shared/app/extension/helper.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/routes/routes.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Helper.afterInit(_initialFunction);
  }

  void _initialFunction() async {
    final ctx = context;
    ctx.read<CommonCubit>().store();
    await Future.delayed(const Duration(milliseconds: 900));
    if (!mounted) return;
    final bool status = await AuthUtils.instance.isSignedIn;
    if (!mounted) return;
    if (status) {
      ctx.go(routeMain);
    } else {
      ctx.go(routeSignIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: SizedBox(
          width: 200.w,
          height: 200.h,
          child: SvgPicture.asset('assets/icons/Logo.svg', height: 170.h),
        ),
      ),
    );
  }
}
