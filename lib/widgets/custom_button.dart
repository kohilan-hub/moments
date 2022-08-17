import 'package:flutter/material.dart';
import 'package:moments/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      default:
        return getPadding(
          all: 5,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillDeeporange6002b:
        return ColorConstant.deepOrange6002b;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineRed900:
        return ColorConstant.red901;
      case ButtonVariant.FillGray301:
        return ColorConstant.gray301;
      case ButtonVariant.OutlineRed901:
        return ColorConstant.red901;
      case ButtonVariant.OutlineBluegray100:
        return null;
      default:
        return ColorConstant.red901;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray100:
        return Border.all(
          color: ColorConstant.bluegray100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineRed900:
        return Border.all(
          color: ColorConstant.red900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineRed901:
        return Border.all(
          color: ColorConstant.red901,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillDeeporange6002b:
      case ButtonVariant.FillRed901:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillGray301:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case ButtonShape.CircleBorder17:
        return BorderRadius.circular(
          getHorizontalSize(
            17.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            3.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineRed900:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case ButtonVariant.OutlineRed901:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case ButtonVariant.FillDeeporange6002b:
      case ButtonVariant.FillRed901:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.OutlineBluegray100:
      case ButtonVariant.FillGray301:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsMedium18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsRegular13:
        return TextStyle(
          color: ColorConstant.red901,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.PoppinsRegular16:
        return TextStyle(
          color: ColorConstant.gray700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.MulishSemiBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PoppinsRegular13WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.PoppinsRegular15:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.MulishSemiBold16Black902:
        return TextStyle(
          color: ColorConstant.black902,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PoppinsRegular14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder3,
  RoundedBorder8,
  CircleBorder17,
}
enum ButtonPadding {
  PaddingAll5,
  PaddingAll14,
  PaddingAll10,
}
enum ButtonVariant {
  FillDeeporange6002b,
  FillRed901,
  FillWhiteA700,
  OutlineBluegray100,
  OutlineRed900,
  FillGray301,
  OutlineRed901,
}
enum ButtonFontStyle {
  MulishSemiBold16Black900,
  PoppinsMedium18,
  PoppinsRegular13,
  PoppinsRegular16,
  MulishSemiBold16,
  PoppinsRegular13WhiteA700,
  PoppinsRegular15,
  MulishSemiBold16Black902,
  PoppinsRegular14,
}
