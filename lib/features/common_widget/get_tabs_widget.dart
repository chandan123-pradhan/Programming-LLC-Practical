import 'package:flutter/material.dart';
import 'package:practicle/core/theme/theme_color.dart';
import 'package:practicle/core/utils/hower_wrapper.dart';
import 'package:practicle/core/utils/text_styles.dart';

class GetTab extends StatelessWidget {
  String title;
  bool isSelected;
  Function onTap;
  GetTab({required this.title, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return HoverWrapper(
      child: InkWell(
        onTap: () {
          onTap;
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 35,
              alignment: Alignment.bottomCenter,
              child: Text(title,
                  style: isSelected
                      ? AppTextStyles.menuActive
                      : AppTextStyles.menuInactive),
            ),
            Expanded(
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: isSelected
                        ? Container(
                            width: 90,
                            height: 4,
                            decoration: BoxDecoration(
                                color: ThemeColor.selectionColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5))),
                          )
                        : SizedBox(
                            height: 4,
                          )))
          ],
        ),
      ),
    );
  }
}
