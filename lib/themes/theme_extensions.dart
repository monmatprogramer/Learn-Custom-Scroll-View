//TODO: do it latter
import 'package:flutter/material.dart';

class RestaurantThemeExtension
    extends ThemeExtension<RestaurantThemeExtension> {
  final Color testTextColor;
  const RestaurantThemeExtension({required this.testTextColor});

  // Light theme value
  static const light = RestaurantThemeExtension(testTextColor: Colors.blue);

  // Dark theme value
  static const dark = RestaurantThemeExtension(testTextColor: Colors.yellow);

  @override
  ThemeExtension<RestaurantThemeExtension> copyWith({Color? testTextColor}) {
    return RestaurantThemeExtension(
      testTextColor: testTextColor ?? this.testTextColor,
    );
  }

  // linear interpolation
  @override
  ThemeExtension<RestaurantThemeExtension> lerp(
    covariant ThemeExtension<RestaurantThemeExtension>? other,
    double t,
  ) {
    if (other is! RestaurantThemeExtension) {
      return this;
    }
    return RestaurantThemeExtension(
      testTextColor: Color.lerp(testTextColor, other.testTextColor, t)!,
    );
  }
}
