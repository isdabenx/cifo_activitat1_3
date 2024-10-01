import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles/app_styles.dart';

final ThemeData myThemeData = ThemeData(
  fontFamily: GoogleFonts.montserrat().fontFamily,
  textTheme: GoogleFonts.montserratTextTheme().copyWith(
    bodyMedium: AppStyles.defaultStyle,
  ),
  scaffoldBackgroundColor: AppStyles.colorBackground,
  appBarTheme: const AppBarTheme(
    foregroundColor: AppStyles.colorWhite,
    backgroundColor: AppStyles.colorPink,
  ),
);
