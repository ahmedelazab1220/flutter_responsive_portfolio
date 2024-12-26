import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'Core/utils/theme_provider.dart';
import 'Core/utils/themes.dart';
import 'Features/home/presentation/view/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ScreenUtilInit(
      designSize: const Size(360, 910),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ahmed Elazab | Portfolio',
        theme: themeProvider.currentTheme == ThemeMode.light
            ? AppThemes.lightTheme
            : AppThemes.darkTheme,
        home: const HomeScreen(),
      ),
    );
  }
}
