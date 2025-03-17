import 'package:e_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.darkGrey.withValues(alpha: 0.1*255),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2)
  );

  static final horizontalProductShadow= 
  BoxShadow(
    color: TColors.darkGrey.withValues(alpha: 0.1*255),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2)
  );

}
