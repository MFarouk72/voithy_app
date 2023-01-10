import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voithy_app/commons/common_blocs/locale_cubit.dart';
import 'package:voithy_app/commons/commons_widgets/lang_button.dart';
import 'package:voithy_app/commons/commons_widgets/main_button.dart';
import 'package:voithy_app/login/view/login_screen.dart';
import 'package:voithy_app/utilites/constants/app_assets.dart';
import 'package:voithy_app/utilites/constants/app_colors.dart';
import 'package:voithy_app/utilites/constants/app_font_style.dart';
import 'package:voithy_app/utilites/localization/app_localizations.dart';
import 'package:voithy_app/utilites/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: SizedBox(
                        height: SizeConfig.safeBlockVertical * 20,
                      ),
                    ),
                  ),
                ),
              ),
              SvgPicture.asset(AppAssets.logo),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 11,
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal * 50,
                child: Text(
                  AppLocalizations.of(context)!
                      .translate('helloAndWelcomeHere'),
                  style: AppFontStyle.robotoBold(
                      SizeConfig.titleFontSize * 1.5, Colors.black),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: SizeConfig.padding,
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal * 85,
                child: Text(
                  AppLocalizations.of(context)!.translate('getAnOverview'),
                  style: AppFontStyle.robotoRegular(
                      SizeConfig.titleFontSize, Colors.black),
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              MainButton(
                height: SizeConfig.safeBlockVertical * 10,
                width: SizeConfig.safeBlockHorizontal * 50,
                text: AppLocalizations.of(context)!.translate('letsStart'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              Text(
                AppLocalizations.of(context)!.translate('chooserYourLanguage'),
                style: AppFontStyle.robotoRegular(
                    SizeConfig.titleFontSize, Colors.black),
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.padding / 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LangButton(
                    text: AppLocalizations.of(context)!.translate('english'),
                    height: SizeConfig.safeBlockVertical * 5,
                    width: SizeConfig.safeBlockHorizontal * 25,
                    onPressed: () {
                      if (!AppLocalizations.of(context)!.isEnLocale) {
                        BlocProvider.of<LocaleCubit>(context).toEnglish();
                      }
                    },
                  ),
                  SizedBox(
                    width: SizeConfig.padding * 3,
                  ),
                  LangButton(
                    text: AppLocalizations.of(context)!.translate('arabic'),
                    height: SizeConfig.safeBlockVertical * 5,
                    width: SizeConfig.safeBlockHorizontal * 25,
                    onPressed: () {
                      if (AppLocalizations.of(context)!.isEnLocale) {
                        BlocProvider.of<LocaleCubit>(context).toArabic();
                      }
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
