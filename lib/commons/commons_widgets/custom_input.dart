import 'package:flutter/material.dart';
import 'package:voithy_app/utilites/constants/app_colors.dart';
import 'package:voithy_app/utilites/localization/app_localizations.dart';

class CustomInput extends StatelessWidget {
  final String? hint, lable;
  final TextEditingController controller;
  final TextInputType textInputType;
  final Function()? onTap;
  final Function(String v)? onChange;
  final bool obscureText, readOnly, autofocus, validation;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLines, maxLength;
  final double radius;
  final TextAlign? textAlign;
  final Color? borderColor, fillColor;

  const CustomInput(
      {Key? key,
      required this.controller,
      this.hint,
      this.lable,
      required this.textInputType,
      this.obscureText = false,
      this.prefixIcon,
      this.suffixIcon,
      this.onTap,
      this.onChange,
      this.maxLines,
      this.textAlign,
      this.readOnly = false,
      this.autofocus = false,
      this.radius = 10.0,
      this.maxLength,
      this.validation = true,
      this.borderColor,
      this.fillColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      onTap: onTap,
      readOnly: readOnly,
      keyboardType: textInputType,
      // textAlign: textAlign != null
      //     ? textAlign!
      //     : AppUtil.rtlDirection(context)
      //     ? TextAlign.right
      //     : TextAlign.left,
      onChanged: onChange,
      validator: validation
          ? (v) {
              if (v!.isEmpty) {
                return AppLocalizations.of(context)!
                    .translate('fieldRequired'); //need to translate
              }
              return null;
            }
          : null,
      autofocus: autofocus,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: suffixIcon,
        ),
        labelText: lable,
        filled: true,
        fillColor: fillColor ?? Colors.white,
        suffixIconConstraints: const BoxConstraints(minWidth: 63),
        prefixIcon: prefixIcon,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
          borderSide: BorderSide(color: borderColor ?? AppColors.bordersColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.bordersColor, width: 2.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.bordersColor, width: 2.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.bordersColor, width: 2.5),
        ),
      ),
    );
  }
}
