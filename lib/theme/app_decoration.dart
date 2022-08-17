import 'package:flutter/material.dart';
import 'package:moments/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.bluegray100,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillDeeporange6002b => BoxDecoration(
        color: ColorConstant.deepOrange6002b,
      );
  static BoxDecoration get outlineRed901 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.red901,
          width: getHorizontalSize(
            0.00,
          ),
        ),
      );
  static BoxDecoration get outlineRed90112 => BoxDecoration(
        color: ColorConstant.red901,
        border: Border.all(
          color: ColorConstant.red901,
          width: getHorizontalSize(
            0.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            0.00,
          ),
        ),
        boxShadow: [
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
          ),
        ],
      );
  static BoxDecoration get outlineRed900 => BoxDecoration(
        color: ColorConstant.red901,
        border: Border.all(
          color: ColorConstant.red900,
          width: getHorizontalSize(
            0.00,
          ),
        ),
      );
  static BoxDecoration get txtOutlineBlack900 => BoxDecoration(
        color: ColorConstant.bluegray10047,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillGray80060 => BoxDecoration(
        color: ColorConstant.gray80060,
      );
  static BoxDecoration get outlineRed90012 => BoxDecoration(
        color: ColorConstant.gray101,
        border: Border.all(
          color: ColorConstant.red900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBlack90063 => BoxDecoration(
        color: ColorConstant.black90063,
      );
  static BoxDecoration get outlineGray400 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.red901,
        boxShadow: [
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
          ),
        ],
      );
  static BoxDecoration get txtOutlineBlack9003f => BoxDecoration();
  static BoxDecoration get outlineBlack90026 => BoxDecoration(
        color: ColorConstant.gray1007c,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90026,
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
          ),
        ],
      );
  static BoxDecoration get fillGray301 => BoxDecoration(
        color: ColorConstant.gray301,
      );
  static BoxDecoration get fillRed900 => BoxDecoration(
        color: ColorConstant.red900,
      );
  static BoxDecoration get fillGray102 => BoxDecoration(
        color: ColorConstant.gray102,
      );
  static BoxDecoration get fillRed800 => BoxDecoration(
        color: ColorConstant.red800,
      );
  static BoxDecoration get fillGray101 => BoxDecoration(
        color: ColorConstant.gray101,
      );
  static BoxDecoration get fillRed901 => BoxDecoration(
        color: ColorConstant.red901,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL50 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        50.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        50.00,
      ),
    ),
  );

  static BorderRadius roundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3.00,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius roundedBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30.00,
    ),
  );

  static BorderRadius txtRoundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius roundedBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50.00,
    ),
  );
}
