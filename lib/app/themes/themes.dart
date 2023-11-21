import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supervisor/generated/fonts.gen.dart';

part 'colors.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: KColors.lightScheme,
  fontFamily: GoogleFonts.poppins().fontFamily,
  fontFamilyFallback: const [FontFamily.poppins],
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: KColors.darkScheme,
  fontFamilyFallback: const [FontFamily.poppins],
);
