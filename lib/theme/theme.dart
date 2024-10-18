import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterTasksTheme {
  static ThemeData get light {
    return FlexThemeData.light(
      colorScheme: flexSchemeLight,
      scheme: FlexScheme.sakura,
      appBarElevation: 2.0,
      subThemesData: const FlexSubThemesData(
        tintedDisabledControls: false,
        blendOnColors: false,
        useTextTheme: true,
        thinBorderWidth: 0.5,
        splashType: FlexSplashType.inkSplash,
        textButtonRadius: 20.0,
        filledButtonRadius: 20.0,
        elevatedButtonRadius: 20.0,
        outlinedButtonRadius: 20.0,
        toggleButtonsRadius: 20.0,
        segmentedButtonRadius: 20.0,
        switchThumbFixedSize: true,
        unselectedToggleIsColored: true,
        inputDecoratorBorderSchemeColor: SchemeColor.primary,
        inputDecoratorRadius: 20.0,
        inputDecoratorUnfocusedBorderIsColored: false,
        inputCursorSchemeColor: SchemeColor.primary,
        inputSelectionSchemeColor: SchemeColor.primary,
        inputSelectionOpacity: 0.50,
        fabUseShape: true,
        fabRadius: 20.0,
        chipRadius: 20.0,
        cardRadius: 20.0,
        alignedDropdown: true,
        tooltipRadius: 4,
        tooltipSchemeColor: SchemeColor.inverseSurface,
        tooltipOpacity: 0.9,
        useInputDecoratorThemeInDialogs: true,
        snackBarElevation: 6,
        snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
        navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
        navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
        navigationBarMutedUnselectedLabel: false,
        navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
        navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
        navigationBarMutedUnselectedIcon: false,
        navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
        navigationBarIndicatorOpacity: 1.00,
        navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
        navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
        navigationRailMutedUnselectedLabel: false,
        navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
        navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
        navigationRailMutedUnselectedIcon: false,
        navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
        navigationRailIndicatorOpacity: 1.00,
        navigationRailBackgroundSchemeColor: SchemeColor.surface,
        navigationRailLabelType: NavigationRailLabelType.none,
      ),
      keyColors: const FlexKeyColors(
        useSecondary: true,
        useTertiary: true,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      fontFamily: GoogleFonts.notoSerif().fontFamily,
    );

    // return ThemeData(
    //   appBarTheme: const AppBarTheme(color: Color(0xFF75D0F7)),
    //   colorScheme: ColorScheme.fromSeed(
    //     seedColor: const Color(0xFF13B9FF),
    //     secondary: const Color.fromARGB(255, 145, 32, 158),
    //   ),
    //   snackBarTheme: const SnackBarThemeData(
    //     behavior: SnackBarBehavior.floating,
    //   ),
    // );
  }

  static ThemeData get dark {
    return FlexThemeData.dark(
      colorScheme: flexSchemeDark,
      scheme: FlexScheme.sakura,
      subThemesData: const FlexSubThemesData(
        tintedDisabledControls: false,
        useTextTheme: true,
        splashType: FlexSplashType.inkSplash,
        thinBorderWidth: 0.5,
        textButtonRadius: 20.0,
        filledButtonRadius: 20.0,
        elevatedButtonRadius: 20.0,
        outlinedButtonRadius: 20.0,
        toggleButtonsRadius: 20.0,
        segmentedButtonRadius: 20.0,
        switchThumbFixedSize: true,
        unselectedToggleIsColored: true,
        inputDecoratorRadius: 20.0,
        inputDecoratorUnfocusedBorderIsColored: false,
        fabUseShape: true,
        fabRadius: 20.0,
        chipRadius: 20.0,
        cardRadius: 20.0,
        alignedDropdown: true,
        tooltipRadius: 4,
        tooltipSchemeColor: SchemeColor.inverseSurface,
        tooltipOpacity: 0.9,
        useInputDecoratorThemeInDialogs: true,
        snackBarElevation: 6,
        snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
        navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
        navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
        navigationBarMutedUnselectedLabel: false,
        navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
        navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
        navigationBarMutedUnselectedIcon: false,
        navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
        navigationBarIndicatorOpacity: 1.00,
        navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
        navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
        navigationRailMutedUnselectedLabel: false,
        navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
        navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
        navigationRailMutedUnselectedIcon: false,
        navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
        navigationRailIndicatorOpacity: 1.00,
        navigationRailBackgroundSchemeColor: SchemeColor.surface,
        navigationRailLabelType: NavigationRailLabelType.none,
      ),
      keyColors: const FlexKeyColors(
        useSecondary: true,
        useTertiary: true,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      fontFamily: GoogleFonts.notoSerif().fontFamily,
    );

    // return ThemeData(
    //   appBarTheme: const AppBarTheme(
    //     color: Color(0xFF102E3B),
    //   ),
    //   colorScheme: ColorScheme.fromSeed(
    //     brightness: Brightness.dark,
    //     seedColor: const Color(0xFF13B9FF),
    //     secondary: const Color.fromARGB(255, 96, 4, 106),
    //   ),
    //   snackBarTheme: const SnackBarThemeData(
    //     behavior: SnackBarBehavior.floating,
    //   ),
    // );
  }

  static const ColorScheme flexSchemeLight = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xffa23956),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xffffd9df),
    onPrimaryContainer: Color(0xff3f0016),
    secondary: Color(0xff77574f),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xffffdad3),
    onSecondaryContainer: Color(0xff2c1510),
    tertiary: Color(0xff825248),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xffffdad3),
    onTertiaryContainer: Color(0xff33110a),
    error: Color(0xffba1a1a),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffffdad6),
    onErrorContainer: Color(0xff410002),
    surface: Color(0xfffffbff),
    onSurface: Color(0xff201a1b),
    surfaceContainerHighest: Color(0xfff3dde0),
    onSurfaceVariant: Color(0xff524345),
    outline: Color(0xff847375),
    outlineVariant: Color(0xffd6c2c4),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff352f30),
    onInverseSurface: Color(0xfffaeeee),
    inversePrimary: Color(0xffffb1c0),
    surfaceTint: Color(0xffa23956),
  );

  static const ColorScheme flexSchemeDark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffffb1c0),
    onPrimary: Color(0xff640529),
    primaryContainer: Color(0xff83213f),
    onPrimaryContainer: Color(0xffffd9df),
    secondary: Color(0xffe7bdb4),
    onSecondary: Color(0xff442a24),
    secondaryContainer: Color(0xff5d3f39),
    onSecondaryContainer: Color(0xffffdad3),
    tertiary: Color(0xfff6b8ab),
    onTertiary: Color(0xff4c261d),
    tertiaryContainer: Color(0xff673b32),
    onTertiaryContainer: Color(0xffffdad3),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
    errorContainer: Color(0xff93000a),
    onErrorContainer: Color(0xffffb4ab),
    surface: Color(0xff201a1b),
    onSurface: Color(0xffece0e0),
    surfaceContainerHighest: Color(0xff524345),
    onSurfaceVariant: Color(0xffd6c2c4),
    outline: Color(0xff9f8c8f),
    outlineVariant: Color(0xff524345),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffece0e0),
    onInverseSurface: Color(0xff352f30),
    inversePrimary: Color(0xffa23956),
    surfaceTint: Color(0xffffb1c0),
  );
}
