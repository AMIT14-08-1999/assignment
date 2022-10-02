import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeText {
  static final headLine = GoogleFonts.aBeeZee(
      textStyle: _headLine.copyWith(
    fontSize: ScreenUtil().setSp(32),
  ));
  static final subHead = GoogleFonts.dosis(
      textStyle: _subLine.copyWith(
    fontSize: ScreenUtil().setSp(20),
  ));
  static const _headLine = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
  );
  static const _subLine = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
}
