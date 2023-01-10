import 'package:flutter/material.dart';
import 'package:voithy_app/utilites/constants/app_colors.dart';
import 'package:voithy_app/utilites/constants/app_font_style.dart';
import 'package:voithy_app/utilites/size_config.dart';

class MainButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback onPressed;
  final Color color;
  final IconData? icon;
  final Color? textColor;
  final Color? sideColor;
  final String? imageAsset;
  const MainButton({Key? key, required this.text, required this.height, required this.width, required this.onPressed,this.color = AppColors.buttonColor,this.icon, this.textColor, this.imageAsset, this.sideColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: sideColor == null ? const BorderSide(color: Colors.transparent) : BorderSide(color: sideColor! , width: 2),
            ),
          ),
        ),
        child: Row(
          children: [
            icon != null ? Icon(icon) : const SizedBox(),
            imageAsset != null ? Image.asset(imageAsset!) : const SizedBox(),
            Expanded(
              child: Text(
                text,
                style:
                    AppFontStyle.robotoBold(SizeConfig.titleFontSize, textColor == null ? Colors.white : textColor!),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
