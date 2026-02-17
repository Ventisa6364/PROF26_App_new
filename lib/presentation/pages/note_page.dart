import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prof26_uikit/prof26_uikit.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.palette.background,
      body: Padding(
        padding: .only(
          top: 18.h,
          right: 20.w,
          bottom: 44.h,
          left: 20.w,
        ).add(MediaQuery.paddingOf(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: .stretch,
              children: [
                Text(
                  'Untitled',
                  textAlign: .center,
                  style: theme.style.nunitoMedium14.copyWith(
                    color: theme.palette.hint,
                  ),
                ),
                Text(
                  'text',
                  textAlign: .start,
                  style: theme.style.nunitoMedium18.copyWith(
                    color: theme.palette.textSecondary,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SizedBox.square(
                    dimension: 32.r,
                    child: SvgPicture.asset(
                      'packages/prof26_uikit/assets/icons/sidebarOff.svg',
                      width: 32.r,
                      height: 32.r,
                      colorFilter: .mode(theme.palette.icon, .srcIn),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SizedBox.square(
                    dimension: 32.r,
                    child: SvgPicture.asset(
                      'packages/prof26_uikit/assets/icons/hamburgerMenu.svg',
                      width: 32.r,
                      height: 32.r,
                      colorFilter: .mode(theme.palette.icon, .srcIn),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
