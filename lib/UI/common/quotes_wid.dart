import 'package:assignment/UI/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuoteWidget extends StatelessWidget {
  final Color backgroundColor;
  final String quote, quoteTitle;
  const QuoteWidget({
    Key? key,
    required this.backgroundColor,
    required this.quote,
    required this.quoteTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(350, 660),
      minTextAdapt: true,
      splitScreenMode: true,
    );
    return Container(
      width: double.infinity,
      color: backgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(16),
        vertical: ScreenUtil().setHeight(48),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/front.png',
            color: Colors.white.withOpacity(0.4),
            width: ScreenUtil().setWidth(70),
            height: ScreenUtil().setHeight(70),
          ),
          Expanded(
            child: Center(
              child: Text(
                quote,
                style: ThemeText.headLine,
              ),
            ),
          ),
          Center(
            child: Text(
              quoteTitle,
              style: ThemeText.subHead,
            ),
          ),
        ],
      ),
    );
  }
}
