import 'package:flutter/material.dart';
import 'package:voithy_app/utilites/constants/app_colors.dart';
import 'package:voithy_app/utilites/constants/app_font_style.dart';
import 'package:voithy_app/utilites/size_config.dart';

class LangButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback onPressed;
  const LangButton({Key? key, required this.text, required this.height, required this.width, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: const BorderSide(color: AppColors.buttonColor),
            ),
          ),
        ),
        child: Text(
          text,
          style:
          AppFontStyle.robotoBold(SizeConfig.titleFontSize, AppColors.buttonColor),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
