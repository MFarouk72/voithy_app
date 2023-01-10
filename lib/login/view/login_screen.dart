import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voithy_app/commons/commons_widgets/continue_with_divider.dart';
import 'package:voithy_app/commons/commons_widgets/custom_input.dart';
import 'package:voithy_app/commons/commons_widgets/main_button.dart';
import 'package:voithy_app/register/view/register_screen.dart';
import 'package:voithy_app/utilites/constants/app_assets.dart';
import 'package:voithy_app/utilites/constants/app_colors.dart';
import 'package:voithy_app/utilites/constants/app_font_style.dart';
import 'package:voithy_app/utilites/localization/app_localizations.dart';
import 'package:voithy_app/utilites/size_config.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SvgPicture.asset(
          AppAssets.logo,
          width: SizeConfig.safeBlockHorizontal,
          height: SizeConfig.safeBlockHorizontal * 6,
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.translate('signIn'),
                style: AppFontStyle.robotoBold(
                    SizeConfig.titleFontSize, Colors.black),
              ),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              Text(
                AppLocalizations.of(context)!.translate('email'),
                style: AppFontStyle.robotoRegular(
                    SizeConfig.titleFontSize, Colors.black),
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.padding / 2,
              ),
              CustomInput(
                  hint: AppLocalizations.of(context)!
                      .translate('pleaseEnterYourEmailAddress'),
                  controller: textEditingController,
                  textInputType: TextInputType.text),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              Text(
                AppLocalizations.of(context)!.translate('password'),
                style: AppFontStyle.robotoRegular(
                    SizeConfig.titleFontSize, Colors.black),
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.padding / 2,
              ),
              CustomInput(
                hint: AppLocalizations.of(context)!
                    .translate('pleaseEnterYourPassword'),
                controller: textEditingController,
                textInputType: TextInputType.text,
                obscureText: true,
              ),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              Center(
                child: Text(
                  AppLocalizations.of(context)!
                      .translate('forgotYourPassword?'),
                  style: AppFontStyle.robotoBold(
                      SizeConfig.titleFontSize, AppColors.textColor),
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              Center(
                child: MainButton(
                    text: AppLocalizations.of(context)!.translate('signIn'),
                    height: SizeConfig.safeBlockVertical * 7,
                    width: double.infinity,
                    onPressed: () {}),
              ),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!
                        .translate('DoNotHaveAnAccount?'),
                    style: AppFontStyle.robotoRegular(
                        SizeConfig.titleFontSize, Colors.black),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: SizeConfig.padding / 2,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const RegisterScreen()));
                    },
                    child: Text(
                      AppLocalizations.of(context)!.translate('signUp'),
                      style: AppFontStyle.robotoBold(
                          SizeConfig.titleFontSize, AppColors.textColor),
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              const ContinueWithDivider(),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              MainButton(
                  color: AppColors.blueColor,
                  text: AppLocalizations.of(context)!.translate('connectWithFacebook'),
                  height: SizeConfig.safeBlockVertical * 7,
                  width: double.infinity,
                  icon: Icons.facebook,
                  onPressed: () {}),
              SizedBox(
                height: SizeConfig.padding,
              ),
              MainButton(
                  color: AppColors.googleColor,
                  text: AppLocalizations.of(context)!.translate('connectWithGoogle'),
                  height: SizeConfig.safeBlockVertical * 7,
                  width: double.infinity,
                  imageAsset: AppAssets.google,
                  textColor: Colors.black,
                  sideColor: AppColors.bordersColor,
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
