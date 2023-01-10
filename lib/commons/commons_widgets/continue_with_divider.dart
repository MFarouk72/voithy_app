import 'package:flutter/material.dart';
import 'package:voithy_app/utilites/constants/app_colors.dart';
import 'package:voithy_app/utilites/constants/app_font_style.dart';
import 'package:voithy_app/utilites/localization/app_localizations.dart';
import 'package:voithy_app/utilites/size_config.dart';

class ContinueWithDivider extends StatelessWidget {
  const ContinueWithDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.bordersColor,
            height: 2,
            thickness: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: SizeConfig.padding, right: SizeConfig.padding),
          child: Text(
            AppLocalizations.of(context)!.translate('orContinueWith'),
            style: AppFontStyle.robotoRegular(
                SizeConfig.titleFontSize, Colors.black),
          ),
        ),
        const Expanded(
          child: Divider(
            color: AppColors.bordersColor,
            height: 2,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
