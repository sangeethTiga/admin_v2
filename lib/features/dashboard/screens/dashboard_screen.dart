import 'package:admin_v2/shared/app/list/common_map.dart';
import 'package:admin_v2/shared/constants/colors.dart';
import 'package:admin_v2/shared/routes/routes.dart';
import 'package:admin_v2/shared/themes/font_palette.dart';
import 'package:admin_v2/shared/widgets/padding/main_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        toolbarHeight: 30.h,
        iconTheme: IconThemeData(color: kWhite),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.h),
          child: MainPadding(
            left: 8.w,
            right: 0,
            bottom: 8.h,
            child: Builder(
              builder: (context) => Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.menu, color: kWhite),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                  4.horizontalSpace,
                  SvgPicture.asset(
                    'assets/icons/Logo.svg',
                    height: 18,
                    width: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: kPrimaryColor),
              child: Text(
                'Admin',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Product offers'),
              onTap: () {
                context.push(routeProductOffers);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Delivery Charge'),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: MainPadding(
        top: 16.h,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 44.h,
                  width: 165.w,
                  decoration: BoxDecoration(
                    color: Color(0XFFEFF1F1),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    children: [
                      12.horizontalSpace,
                      SvgPicture.asset(
                        'assets/icons/package-box-pin-location.svg',
                        height: 20.h,
                        width: 20.w,
                      ),
                      8.horizontalSpace,
                      Text('My store', style: FontPalette.hW500S14),
                      Spacer(),
                      SvgPicture.asset('assets/icons/Arrow - Right.svg'),
                      12.horizontalSpace,
                    ],
                  ),
                ),
                Container(
                  height: 44.h,
                  width: 98.w,
                  decoration: BoxDecoration(
                    color: Color(0XFFEFF1F1),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    children: [
                      12.horizontalSpace,

                      Text('Today', style: FontPalette.hW500S14),
                      Spacer(),
                      SvgPicture.asset('assets/icons/Arrow - Right.svg'),
                      12.horizontalSpace,
                    ],
                  ),
                ),
              ],
            ),
            20.verticalSpace,
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: accountList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, i) {
                  final data = accountList[i];
                  return GestureDetector(
                    onTap: () {
                      switch (data.name) {
                        case 'Product':
                          context.push(routeProducts);
                          break;
                        case 'Profit/loss':
                          context.push(routeProfitloss);
                          break;
                        default:
                      }
                    },
                    child: Container(
                      height: 138.h,
                      width: 170.w,
                      decoration: BoxDecoration(
                        color: Color(0XFFEFF1F1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            data.image ?? '',
                            width: 90.w,
                            height: 66.h,
                          ),
                          Text(data.name ?? '', style: FontPalette.hW700S13),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
