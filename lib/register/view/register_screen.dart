import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voithy_app/commons/commons_widgets/custom_input.dart';
import 'package:voithy_app/commons/commons_widgets/main_button.dart';
import 'package:voithy_app/login/view/login_screen.dart';
import 'package:voithy_app/utilites/constants/app_assets.dart';
import 'package:voithy_app/utilites/constants/app_colors.dart';
import 'package:voithy_app/utilites/constants/app_font_style.dart';
import 'package:voithy_app/utilites/localization/app_localizations.dart';
import 'package:voithy_app/utilites/size_config.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                AppLocalizations.of(context)!.translate('createAVoithyAccount'),
                style: AppFontStyle.robotoBold(
                    SizeConfig.titleFontSize, Colors.black),
              ),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              Text(
                AppLocalizations.of(context)!.translate('firstName'),
                style: AppFontStyle.robotoRegular(
                    SizeConfig.titleFontSize, Colors.black),
              ),
              SizedBox(
                height: SizeConfig.padding / 2,
              ),
              CustomInput(
                  hint: AppLocalizations.of(context)!
                      .translate('pleaseEnterYourFirstName'),
                  controller: textEditingController,
                  textInputType: TextInputType.text),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              Text(
                AppLocalizations.of(context)!.translate('lastName'),
                style: AppFontStyle.robotoRegular(
                    SizeConfig.titleFontSize, Colors.black),
              ),
              SizedBox(
                height: SizeConfig.padding / 2,
              ),
              CustomInput(
                hint: AppLocalizations.of(context)!
                    .translate('pleaseEnterYourLastName'),
                controller: textEditingController,
                textInputType: TextInputType.text,
                obscureText: true,
              ),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              Text(
                AppLocalizations.of(context)!.translate('mobileNumber'),
                style: AppFontStyle.robotoRegular(
                    SizeConfig.titleFontSize, Colors.black),
              ),
              SizedBox(
                height: SizeConfig.padding / 2,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 46,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: AppColors.bordersColor, // Set border color
                              width: 2.0),   // Set border width
                          borderRadius: const BorderRadius.all(
                              Radius.circular(10.0)), // Set rounded corner radius
                      ),
                      child:const Center(child:  Text("+20")),
                    ),
                    SizedBox(
                      width: SizeConfig.padding / 2,
                    ),
                    Expanded(
                      flex: 2,
                      child: CustomInput(
                        hint: AppLocalizations.of(context)!
                            .translate('number'),
                        controller: textEditingController,
                        textInputType: TextInputType.text,
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.padding * 2,
              ),
              Text(
                AppLocalizations.of(context)!.translate('email'),
                style: AppFontStyle.robotoRegular(
                    SizeConfig.titleFontSize, Colors.black),
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
              Text(
                AppLocalizations.of(context)!.translate('confirmPassword'),
                style: AppFontStyle.robotoRegular(
                    SizeConfig.titleFontSize, Colors.black),
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
                height: SizeConfig.padding / 2,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)!.translate('iAgreeWithThe'),
                      style: AppFontStyle.robotoRegular(
                          SizeConfig.titleFontSize, Colors.black),
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: SizeConfig.padding / 2,
                    ),
                    Text(
                      AppLocalizations.of(context)!
                          .translate('termsAndConditions'),
                      style: AppFontStyle.robotoBold(
                          SizeConfig.titleFontSize, AppColors.textColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.padding / 2,
              ),
              Center(
                child: MainButton(
                    text: AppLocalizations.of(context)!.translate('signUp'),
                    height: SizeConfig.safeBlockVertical * 7,
                    width: double.infinity,
                    onPressed: () {}),
              ),
              SizedBox(
                height: SizeConfig.padding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.translate('alreadyAMember?'),
                    style: AppFontStyle.robotoRegular(
                        SizeConfig.titleFontSize, Colors.black),
                  ),
                  SizedBox(
                    width: SizeConfig.padding / 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      AppLocalizations.of(context)!.translate('signIn'),
                      style: AppFontStyle.robotoRegular(
                          SizeConfig.titleFontSize, AppColors.textColor),
                    ),
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
