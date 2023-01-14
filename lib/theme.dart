import 'package:flutter_control/control.dart';

class UITheme extends ControlTheme {
  final itemRadius = 6.0;

  final cardRadius = 12.0;

  final fontFamily = "SourceSansPro";

  final toolbarHeight = kToolbarHeight;

  double get headerHeight => 300.0 + device.topBorderSize;

  Color get backgroundTintColor => data.scaffoldBackgroundColor;

  Color get shadowColor => data.shadowColor;

  Color get accentColor => data.colorScheme.secondary;

  Color get accentColorLight => Colors.white;

  TextTheme get fontAccent => data.accentTextTheme;

  Color get primaryColor => data.primaryColor;

  @override
  final iconLauncher = 128.0;

  UITheme(BuildContext? context) : super(context);

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF3882C4),
        primaryColorDark: Color(0xFF113A66),
        primaryColorLight: Color(0x5E3882C4),
        errorColor: Color(0xFFF63939),
        toggleableActiveColor: Color(0xFF113A66),
        unselectedWidgetColor: Color(0x5E3882C4),
        dividerColor: Color(0xFFB7C4D1),
        canvasColor: Colors.transparent,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Color(0xFFF8F9FB),
        shadowColor: Color(0x1A063E7B),
        fontFamily: fontFamily,
        textTheme: _copyTextTheme(_mainTextTheme(), Color(0xFF587594)),
        primaryTextTheme: _copyTextTheme(_mainTextTheme(), Color(0xFF113A66)),
        accentTextTheme: _copyTextTheme(_mainTextTheme(), Colors.white),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Color(0xFF3882C4),
            padding: EdgeInsets.zero,
            splashFactory: InkRipple.splashFactory,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF3882C4),
        ),
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF3882C4),
          onPrimary: Colors.white,
          secondary: Color(0xFFFB7543),
          onSecondary: Colors.white,
          tertiary: Color(0xFFFB7543),
          onTertiary: Colors.white,
          error: Color(0xFFF63939),
          onError: Colors.white,
          background: Colors.white,
          onBackground: Color(0xFF113A66),
          surface: Colors.white,
          onSurface: Color(0xFF113A66),
        ),
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF3882C4),
        primaryColorDark: Color(0xFFE1E1E1),
        primaryColorLight: Color(0xA13882C4),
        errorColor: Color(0xFFF63939),
        toggleableActiveColor: Color(0xFF316A96),
        unselectedWidgetColor: Color(0xA13882C4),
        dividerColor: Color(0xFF27282a),
        canvasColor: Colors.transparent,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Color(0xFF1d1d1d),
        shadowColor: Color(0x1F000000),
        fontFamily: fontFamily,
        textTheme: _copyTextTheme(_mainTextTheme(), Color(0xFF999999)),
        primaryTextTheme: _copyTextTheme(_mainTextTheme(), Color(0xFFE1E1E1)),
        accentTextTheme: _copyTextTheme(_mainTextTheme(), Colors.white),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Color(0xFF3882C4),
            padding: EdgeInsets.zero,
            splashFactory: InkRipple.splashFactory,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF3882C4),
        ),
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF3882C4),
          onPrimary: Colors.white,
          secondary: Color(0xFFFB7543),
          onSecondary: Colors.white,
          tertiary: Color(0xFFFB7543),
          onTertiary: Colors.white,
          error: Color(0xFFF63939),
          onError: Colors.white,
          background: Colors.black,
          onBackground: Colors.white,
          surface: Colors.black,
          onSurface: Colors.white,
        ),
      );

  TextTheme _mainTextTheme() => TextTheme(
        displayLarge: Typography.blackMountainView.displayLarge,
        displayMedium: Typography.blackMountainView.displayMedium,
        displaySmall: Typography.blackMountainView.displaySmall,
        headlineLarge: TextStyle(
            fontSize: 32.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600),
        headlineSmall: TextStyle(
            fontSize: 18.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600),
        titleLarge: TextStyle(
            fontSize: 16.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w700),
        bodyLarge: TextStyle(
            fontSize: 15.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(
            fontSize: 12.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600),
        titleMedium: TextStyle(
            fontSize: 15.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600),
        titleSmall: TextStyle(
            fontSize: 13.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600),
        bodySmall: TextStyle(
            fontSize: 12.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w100),
        labelLarge: TextStyle(
            fontSize: 18.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600),
        labelSmall: TextStyle(
            fontSize: 12.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w400),
      );

  TextTheme _copyTextTheme(TextTheme theme, Color color) => TextTheme(
        displayLarge: theme.displayLarge!.copyWith(color: color),
        displayMedium: theme.displayMedium!.copyWith(color: color),
        displaySmall: theme.displaySmall!.copyWith(color: color),
        headlineLarge: theme.headlineLarge!.copyWith(color: color),
        headlineSmall: theme.headlineSmall!.copyWith(color: color),
        titleLarge: theme.titleLarge!.copyWith(color: color),
        bodyLarge: theme.bodyLarge!.copyWith(color: color),
        bodyMedium: theme.bodyMedium!.copyWith(color: color),
        titleMedium: theme.titleMedium!.copyWith(color: color),
        titleSmall: theme.titleSmall!.copyWith(color: color),
        bodySmall: theme.bodySmall!.copyWith(color: color),
        labelLarge: theme.labelLarge!.copyWith(color: color),
        labelSmall: theme.labelSmall!.copyWith(color: color.withOpacity(0.35)),
      );
}
