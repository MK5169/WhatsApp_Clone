import 'package:flutter/material.dart';
import 'package:whatsapp_cloned/common/utils/coloors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: Coloors.greyLight,
    blueColor: Coloors.blueLight,
    lanBtnHighlightColor: Color(0xFFE8E8ED),
    lanBtnColor: Color(0xFFF7F8FA),
  );
  static const darkMode = CustomThemeExtension(
    circleImageColor: Coloors.greenDark,
    greyColor: Coloors.greyDark,
    blueColor: Coloors.blueDark,
    lanBtnHighlightColor: Color(0xFF182229),
    lanBtnColor: Color(0xFF09141A),
  );
  final Color? circleImageColor;
  final Color? blueColor;
  final Color? greyColor;
  final Color? lanBtnColor;
  final Color? lanBtnHighlightColor;

  const CustomThemeExtension({
    this.circleImageColor,
    this.blueColor,
    this.greyColor,
    this.lanBtnColor,
    this.lanBtnHighlightColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? blueColor,
    Color? greyColor,
    Color? lanBtnColor,
    Color? lanBtnHighlightColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      blueColor: blueColor ?? this.blueColor,
      greyColor: greyColor ?? this.greyColor,
      lanBtnColor: lanBtnColor ?? this.lanBtnColor,
      lanBtnHighlightColor: lanBtnHighlightColor ?? this.lanBtnHighlightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      lanBtnColor: Color.lerp(lanBtnColor, other.lanBtnColor, t),
      lanBtnHighlightColor:
          Color.lerp(lanBtnHighlightColor, other.lanBtnHighlightColor, t),
    );
  }
}
