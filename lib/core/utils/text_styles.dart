import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practicle/core/theme/theme_color.dart';

class AppTextStyles {
  // Dashboard Title
  static TextStyle dashboardTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
     fontFamily: 'ROBOTO',
    color: Color(0xFFFC593D), // Red color for text
  );

  // Menu/Tab Text (Active & Inactive)
  static TextStyle menuActive = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: 'ROBOTO',
    color: Color(0xFFFC593D), // Red active color
  );

  static TextStyle menuInactive =TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
     fontFamily: 'ROBOTO',
    color: Colors.black, // Default inactive color
  );

  // Faults Heading
  static TextStyle faultsHeading =TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
     fontFamily: 'ROBOTO',
    color: ThemeColor.cardColor,
  );

  // Fault Description
  static TextStyle faultDescription = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
     fontFamily: 'ROBOTO',
    color: Colors.black54,
  );


  static TextStyle titleText =TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.normal,
     fontFamily: 'ROBOTO',
    color: ThemeColor.blackColor,
  );
  // VIN Number Text
  static TextStyle vinText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
     fontFamily: 'ROBOTO',
    color: Colors.white70,
  );

  // Battery & State of Charge Text
  static TextStyle batteryText = TextStyle(
     fontFamily: 'ROBOTO',
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  // Button Text
  static TextStyle buttonText = TextStyle(
     fontFamily: 'ROBOTO',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

}
