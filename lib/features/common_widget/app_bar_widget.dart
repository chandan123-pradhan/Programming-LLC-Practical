import 'package:flutter/material.dart';
import 'package:practicle/core/theme/theme_color.dart';
import 'package:practicle/core/utils/assets_utils.dart';
import 'package:practicle/core/utils/display_size.dart';
import 'package:practicle/features/common_widget/get_tabs_widget.dart';

class CommonAppBarWidget extends StatelessWidget {
  const CommonAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      width: DisplaySize.getDisplayWidth(context),
      decoration: BoxDecoration(
        color: ThemeColor.whitebgcolor,
      ),
      child: Row(
        children: [
          Image.asset(AssetsUtils.companylogo),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetTab(
                  title: 'DASHBOARD',
                  isSelected: true,
                  onTap: () {},
                ),
                SizedBox(width: DisplaySize.getDisplayWidth(context) / 10),
                GetTab(
                  title: 'FEEDBACK',
                  isSelected: false,
                  onTap: () {},
                ),
                SizedBox(width: DisplaySize.getDisplayWidth(context) / 10),
                GetTab(
                  title: 'SETTINGS',
                  isSelected: false,
                  onTap: () {},
                ),
                // SizedBox(width: DisplaySize.getDisplayWidth(context) / 10)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
