import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomButtonWidget extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final TextStyle? customTextStyle;
  final Color primaryColor;
  final Color? outlinedColor;
  final Color splashColor;
  final Color? shadowColor;
  final Color textColor;
  final double? minimumWidth;
  final double? minimumHeight;
  final EdgeInsets? padding;
  final Widget? child;
  final double elevation;
  final double? borderRadius;
  final MaterialTapTargetSize tapTargetSize;
  final bool? isDisabled;
  final bool? isLoadingButton;
  final bool? useGradient;
  final Gradient? gradient;

  const CustomButtonWidget({
    super.key,
    this.onTap,
    this.elevation = 0,
    this.borderRadius,
    required this.text,
    this.customTextStyle,
    this.primaryColor = AppColors.primary,
    this.splashColor = Colors.white,
    this.textColor = Colors.white,
    this.minimumWidth,
    this.minimumHeight,
    this.padding,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.shadowColor,
    this.isDisabled,
    this.isLoadingButton = false,
  })  : child = null,
        outlinedColor = null,
        useGradient = false,
        gradient = null;

  const CustomButtonWidget.outlined({
    super.key,
    this.onTap,
    this.elevation = 0,
    this.customTextStyle,
    this.borderRadius,
    this.shadowColor,
    this.textColor = AppColors.primary,
    required this.text,
    this.minimumHeight,
    this.primaryColor = Colors.white,
    this.outlinedColor = AppColors.primary,
    this.splashColor = AppColors.primary50,
    this.minimumWidth,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.padding,
    this.isDisabled,
    this.isLoadingButton = false,
  })  : child = null,
        useGradient = false,
        gradient = null;

  const CustomButtonWidget.textOnly({
    super.key,
    this.onTap,
    this.elevation = 0,
    this.customTextStyle,
    this.borderRadius,
    this.shadowColor,
    this.textColor = Colors.white,
    required this.text,
    this.minimumHeight,
    this.primaryColor = AppColors.primary,
    this.outlinedColor = Colors.transparent,
    this.splashColor = AppColors.primary50,
    this.minimumWidth,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.padding,
    this.isDisabled,
    this.isLoadingButton = false,
  })  : child = null,
        useGradient = false,
        gradient = null;

  const CustomButtonWidget.child({
    super.key,
    this.onTap,
    this.elevation = 4,
    this.borderRadius,
    required this.child,
    this.minimumHeight,
    this.shadowColor,
    this.primaryColor = AppColors.primary,
    this.splashColor = Colors.white,
    this.minimumWidth,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.padding,
    this.isDisabled,
    this.isLoadingButton = false,
  })  : text = '',
        textColor = AppColors.primary,
        customTextStyle = null,
        outlinedColor = null,
        useGradient = false,
        gradient = null;

  const CustomButtonWidget.outlinedChild({
    super.key,
    this.onTap,
    this.elevation = 4,
    this.borderRadius,
    required this.child,
    this.minimumHeight,
    this.primaryColor = Colors.white,
    this.outlinedColor = AppColors.primary,
    this.splashColor = AppColors.primary50,
    this.minimumWidth,
    this.shadowColor,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.padding,
    this.isDisabled,
    this.isLoadingButton = false,
  })  : text = '',
        textColor = AppColors.primary,
        customTextStyle = null,
        useGradient = false,
        gradient = null;

  const CustomButtonWidget.gradient({
    super.key,
    this.onTap,
    this.elevation = 0,
    this.customTextStyle,
    this.borderRadius,
    this.shadowColor,
    this.textColor = Colors.white,
    required this.text,
    this.minimumHeight,
    this.primaryColor = Colors.white,
    this.outlinedColor = Colors.transparent,
    this.splashColor = AppColors.primary,
    this.minimumWidth,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.padding,
    this.isDisabled,
    this.gradient,
    this.isLoadingButton = false,
  })  : useGradient = true,
        child = null;

  const CustomButtonWidget.gradientChild({
    super.key,
    this.onTap,
    this.elevation = 4,
    this.borderRadius,
    required this.child,
    this.minimumHeight,
    this.shadowColor,
    this.primaryColor = AppColors.primary,
    this.splashColor = Colors.white,
    this.minimumWidth,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.padding,
    this.isDisabled,
    this.isLoadingButton = false,
  })  : text = '',
        textColor = AppColors.primary,
        customTextStyle = null,
        outlinedColor = null,
        useGradient = true,
        gradient = null;

  @override
  Widget build(BuildContext context) {
    return useGradient == true
        ? DecoratedBox(
            decoration: BoxDecoration(
              gradient: gradient ??
                  LinearGradient(
                    colors: onTap == null || isDisabled == true
                        ? [
                            AppColors.greyFoundation50,
                            AppColors.greyFoundation50,
                          ]
                        : [
                            // AppColors.primary700,
                            // AppColors.primary,
                            const Color(0xff017632),
                            const Color(0xff178243),
                            const Color(0xff55A376),

                            // const Color(0xff017632).withOpacity(0.7),
                          ],
                    begin: Alignment.topLeft,
                    end: const Alignment(1.0, 2),
                    // transform: const GradientRotation(13.094395),
                  ),
              borderRadius: BorderRadius.circular(borderRadius ?? 5.r),
              // boxShadow: const <BoxShadow>[
              //   BoxShadow(
              //     color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
              //     blurRadius: 5,
              //   ), //blur radius of shadow
              // ],
            ),
            child: ElevatedButton(
              onPressed: (isDisabled == true) ? null : onTap,
              style: ElevatedButton.styleFrom(
                elevation: elevation,
                backgroundColor: Colors.transparent,
                disabledForegroundColor: Colors.transparent.withOpacity(0.38),
                disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
                shadowColor: Colors.transparent,
                tapTargetSize: tapTargetSize,
                minimumSize: Size(
                  minimumWidth ?? double.infinity,
                  minimumHeight ?? 0,
                ),
                padding: padding ??
                    EdgeInsets.symmetric(
                      vertical: 13.h,
                      horizontal: 10.w,
                    ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    borderRadius ?? 4.r,
                  ),
                  side: outlinedColor == null
                      ? BorderSide.none
                      : BorderSide(
                          color: outlinedColor!,
                        ),
                ),
              ),
              child: (isLoadingButton == true)
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 3.0,
                      ),
                    )
                  : child ??
                      Text(
                        text.tr,
                        textAlign: TextAlign.center,
                        style: customTextStyle ??
                            TextStyle(
                              color: textColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
            ),
          )
        : ElevatedButton(
            onPressed: (isDisabled ?? false) ? null : onTap,
            style: ElevatedButton.styleFrom(
              elevation: elevation,
              shadowColor: shadowColor ?? Colors.black54,
              backgroundColor: isDisabled == true ? AppColors.greyFoundation100 : primaryColor,
              foregroundColor: splashColor,
              tapTargetSize: tapTargetSize,
              minimumSize: Size(
                minimumWidth ?? double.infinity,
                minimumHeight ?? 0,
              ),
              padding: padding ??
                  EdgeInsets.symmetric(
                    vertical: 13.h,
                    horizontal: 10.w,
                  ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  borderRadius ?? 4.r,
                ),
                side: outlinedColor == null
                    ? BorderSide.none
                    : BorderSide(
                        color: outlinedColor!,
                      ),
              ),
            ),
            child: (isLoadingButton == true)
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 3.0,
                    ),
                  )
                : child ??
                    Text(
                      text.tr,
                      textAlign: TextAlign.center,
                      style: customTextStyle ??
                          TextStyle(
                            color: textColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
          );
  }
}
