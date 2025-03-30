import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practicle/core/theme/theme_color.dart';
import 'package:practicle/core/utils/assets_utils.dart';
import 'package:practicle/core/utils/display_size.dart';
import 'package:practicle/core/utils/text_styles.dart';
import 'package:practicle/features/common_widget/app_bar_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CommonAppBarWidget(),
        Expanded(
            child:  LayoutBuilder(builder: (context, constraints) {
              double screenWidth = constraints.maxWidth;
                return Container(
                          decoration: BoxDecoration(color: ThemeColor.linearColor),
                          child:
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: DisplaySize.getDisplayWidth(context) / 2.8,
                                height: DisplaySize.getDisplayHeight(context) / 1.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: ThemeColor.cardColor,
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: DisplaySize.getDisplayWidth(context) / 2.8,
                                      height: DisplaySize.getDisplayHeight(context) / 2,
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        AssetsUtils.bikeIcon,
                                        width: DisplaySize.getDisplayWidth(context) / 4,
                                      ),
                                    ),
                                    Positioned(
                                      top: 30,
                                      left: 30,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 16,
                                            width: 16,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: ThemeColor.greenColor),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "ARMED",
                                            style: AppTextStyles.vinText
                                                .copyWith(color: ThemeColor.greenColor),
                                          )
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 30,
                                      left: 30,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "2024 DSR/X",
                                            style:
                                                AppTextStyles.dashboardTitle.copyWith(
                                              foreground: Paint()
                                                ..shader = LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    ThemeColor
                                                        .whitebgcolor, // Top color (white)
                                                    ThemeColor
                                                        .paleBlue // Bottom fading color
                                                  ],
                                                ).createShader(Rect.fromLTWH(
                                                    0.0, 0.0, 200.0, 30.0)),
                                            ),
                                          ),
                                          Text(
                                            "DUAL SPORT",
                                            style:
                                                AppTextStyles.dashboardTitle.copyWith(
                                              color: Color.fromARGB((0.6 * 255).toInt(),
                                                  255, 255, 255), // 60% opacity
                                              fontSize: 12,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 30,
                                      right: 30,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "VIN: 2194568756",
                                            style:
                                                AppTextStyles.dashboardTitle.copyWith(
                                              color: Color.fromARGB((0.6 * 255).toInt(),
                                                  255, 255, 255), // 60% opacity
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                height: DisplaySize.getDisplayHeight(context) / 1.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  gradient: LinearGradient(
                                    colors: [
                                      ThemeColor.whiteCardColor,
                                      Color(0xFFCCDAEB), // Second color
                                    ],
                                    begin: Alignment.topCenter, // Start from the top
                                    end: Alignment.bottomCenter, // End at the bottom
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "FAULTS",
                                            style: AppTextStyles.faultsHeading,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: ThemeColor.cardColor),
                                            alignment: Alignment.center,
                                            child: Text(
                                              '1',
                                              style: AppTextStyles.vinText,
                                            ),
                                          )
                                        ],
                                      ),
                                      Image.asset(
                                        AssetsUtils.warningIcon,
                                        height: 98,
                                        width: 104,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: ThemeColor.selectionColor),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '1',
                                                  style: AppTextStyles.vinText,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "High Throttle",
                                                    style: AppTextStyles.titleText,
                                                  ),
                                                  Text(
                                                    "Likely throttle connection or\npotentionmeter issue",
                                                    style: AppTextStyles
                                                        .faultDescription
                                                        .copyWith(
                                                            color:
                                                                ThemeColor.blackColor),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: 40,
                                            width:
                                                DisplaySize.getDisplayWidth(context) /
                                                    10,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(40),
                                              color: ThemeColor.whiteCardColor,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withValues(alpha: 0.2),
                                                  spreadRadius: 1,
                                                  blurRadius: 2,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Troubleshot",
                                              style: AppTextStyles.faultDescription
                                                  .copyWith(
                                                      color: ThemeColor.selectionColor),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Divider(
                                        color: Colors.black12,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                   
                  SizedBox(height: 30,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Battery Voltage & Charge Section
                            Row(
                              children: [
                                _buildInfoCard(
                                    "12V", "BATTERY VOLTAGE", screenWidth),
                                SizedBox(width: screenWidth * 0.02),
                                _buildInfoCard("56%", "STATE OF CHARGE",
                                    screenWidth, hasIcon: true),
                              ],
                            ),
                
                            // Start Repair Button
                            Container(
                              height: 80,
                              width: screenWidth * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: ThemeColor.selectionColor,
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Start Repair",
                                      style: AppTextStyles.faultDescription
                                          .copyWith(
                                              color: ThemeColor.whitebgcolor,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500)),
                                  Image.asset(AssetsUtils.arrowIcon,
                                      height: 53, width: 50),
                                ],
                              ),
                            ),
                          ],
                        ),      
                   
                      ],
                    ),
                  )
                
                          
                        );
              }
            ))
      ],
    ));
  }



   Widget _buildInfoCard(String title, String subtitle, double width,
      {bool hasIcon = false}) {
    return Container(
      width: width * 0.15,
      padding: EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Color(0xFFCCDAEB),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          hasIcon
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AssetsUtils.chargeIcon, height: 34, width: 16),
                    SizedBox(width: 5),
                    Text(title, style: AppTextStyles.faultsHeading),
                  ],
                )
              : Text(title, style: AppTextStyles.faultsHeading),
          Text(subtitle, style: AppTextStyles.faultDescription),
        ],
      ),
    );
  }
}
