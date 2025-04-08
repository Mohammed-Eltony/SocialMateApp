import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:social_mate/core/util/colors.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final PageController controller = PageController();
  final List<Widget> _screens = [

    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: PageView(controller: controller, children: _screens),
        bottomNavigationBar: BottomBarBubble(
          backgroundColor: AppColors.primaryColor,
          color: AppColors.secondColor,

          items: [
            BottomBarItem(iconData: Icons.home),
            BottomBarItem(iconData: Icons.account_balance_wallet),
            BottomBarItem(iconData: Icons.notifications),
          ],
          onSelect: (index) {
            controller.jumpToPage(index);
          },
        ),
      ),
    );
  }
}
/*

Padding(
          padding: EdgeInsets.all(8.w(context)),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w(context),
              vertical: 10.h(context),
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(14.r(context)),
            ),
            child: GNav(
              tabBorderRadius: 25.r(context),
              gap: 10.w(context),
              activeColor: AppColors.secondColor,
              color: AppColors.whiteColor,
              duration: Duration(milliseconds: 300),
              backgroundColor: AppColors.primaryColor,
              tabActiveBorder: Border.all(
                color: AppColors.secondColor,
                width: 2.w(context),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.w(context),
                vertical: 14.h(context),
              ),
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              tabs: [
                GButton(
                  icon: Icons.circle,
                  iconColor: Colors.transparent,
                  text: 'Cars For Sale',
                  textStyle:
                      _selectedIndex == 0
                          ? getTitleStyle(
                            context,
                            fontSize: 10.sp(context),
                            color: AppColors.secondColor,
                          )
                          : getTitleStyle(
                            context,
                            fontSize: 10.sp(context),
                            color: AppColors.whiteColor,
                          ),
                  leading:
                      _selectedIndex == 0
                          ? SvgPicture.asset(
                            Assets.iconActivCarsForSale,
                            width: 22.w(context),
                            height: 22.w(context),
                          )
                          : SvgPicture.asset(
                            Assets.iconCarsForSale,
                            width: 22.w(context),
                            height: 22.w(context),
                            colorFilter: ColorFilter.mode(
                              AppColors.whiteColor,
                              BlendMode.srcIn,
                            ),
                          ),
                ),
                GButton(
                  icon: Icons.circle,
                  iconColor: Colors.transparent,
                  text: 'Wallet',
                  textStyle:
                      _selectedIndex == 1
                          ? getTitleStyle(
                            context,
                            fontSize: 10.sp(context),
                            color: AppColors.secondColor,
                          )
                          : getTitleStyle(
                            context,
                            fontSize: 10.sp(context),
                            color: AppColors.whiteColor,
                          ),
                  leading:
                      _selectedIndex == 1
                          ? SvgPicture.asset(
                            Assets.iconWallet,
                            width: 22.w(context),
                            height: 22.w(context),
                            colorFilter: ColorFilter.mode(
                              AppColors.secondColor,
                              BlendMode.srcIn,
                            ),
                          )
                          : SvgPicture.asset(
                            Assets.iconWallet,
                            width: 22.w(context),
                            height: 22.w(context),
                            colorFilter: ColorFilter.mode(
                              AppColors.whiteColor,
                              BlendMode.srcIn,
                            ),
                          ),
                ),
                GButton(
                  icon: Icons.circle,
                  iconColor: Colors.transparent,
                  text: 'Analytics',
                  textStyle:
                      _selectedIndex == 2
                          ? getTitleStyle(
                            context,
                            fontSize: 10.sp(context),
                            color: AppColors.secondColor,
                          )
                          : getTitleStyle(
                            context,
                            fontSize: 10.sp(context),
                            color: AppColors.whiteColor,
                          ),
                  leading:
                      _selectedIndex == 2
                          ? SvgPicture.asset(
                            Assets.iconAnalytics,
                            width: 22.w(context),
                            height: 22.w(context),
                            colorFilter: ColorFilter.mode(
                              AppColors.secondColor,
                              BlendMode.srcIn,
                            ),
                          )
                          : SvgPicture.asset(
                            Assets.iconAnalytics,
                            width: 22.w(context),
                            height: 22.w(context),
                            colorFilter: ColorFilter.mode(
                              AppColors.whiteColor,
                              BlendMode.srcIn,
                            ),
                          ),
                ),
              ],
            ),
          ),
        ),
      


*/