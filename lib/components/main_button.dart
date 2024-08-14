import 'package:first_app/constant/app_text_style.dart';
import 'package:first_app/constant/colorPalette.dart';
import 'package:first_app/constant/screen_size.dart';
import 'package:first_app/constant/width.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String btnText;
  final Color? btnColor;
  final Color? btnBorderColor;
  final double btnBorderRadius;
  final Color? btnTextColor;
  final IconData? icon;
  final Color? iconColor;
  final double withScaleFactor;
  final double heightScaleFactor;
  final double btnMarginVertical;
  final double btnMarginHorizontal;
  final double btnPaddingVertical;
  final double btnPaddingHorizontal;
  final bool isRow;
  final VoidCallback onPressed;

  const MainButton({
    super.key,
    required this.btnText,
    this.btnColor,
    this.btnBorderColor,
    required this.btnBorderRadius,
    this.btnTextColor,
    this.icon,
    required this.withScaleFactor,
    required this.heightScaleFactor,
    required this.btnMarginVertical,
    required this.btnMarginHorizontal,
    required this.btnPaddingVertical,
    required this.btnPaddingHorizontal,
    required this.isRow,
    required this.onPressed,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = Width(context);

    double valueTextSize =
        ScreenSize.screenWidthControl(screenWidth)['valueTextSize']!;
    double valueBtnDimension =
        ScreenSize.screenWidthControl(screenWidth)['valueBtnDimension']!;
    Widget place() {
      return isRow
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (icon != null)
                  Icon(icon,
                      color: (iconColor != null)
                          ? iconColor
                          : Colorpalette.iconColor),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    btnText,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    style: AppTextStyle.buttonText(valueTextSize, btnTextColor),
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (icon != null)
                  Icon(icon,
                      color: (iconColor != null)
                          ? iconColor
                          : Colorpalette.iconColor),
                const SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    btnText,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    style: AppTextStyle.buttonText(valueTextSize, btnTextColor),
                  ),
                ),
              ],
            );
    }

    return Container(
      width: valueBtnDimension * withScaleFactor,
      height: valueBtnDimension * heightScaleFactor,
      margin: EdgeInsets.symmetric(
        vertical: btnMarginVertical,
        horizontal: btnMarginHorizontal,
      ),
      padding: EdgeInsets.symmetric(
        vertical: btnPaddingVertical,
        horizontal: btnPaddingHorizontal,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          elevation: 5, // Gölgenin yoğunluğu
          shadowColor: Colorpalette.greyColor, // Gölgenin rengi
          backgroundColor: btnColor ?? Colorpalette.whiteColor,
          side: BorderSide(color: btnBorderColor ?? Colorpalette.borderColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(btnBorderRadius),
          ),
        ),
        child: place(),
      ),
    );
  }
}
