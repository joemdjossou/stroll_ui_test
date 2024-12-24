import 'package:device_preview_minus/device_preview_minus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:stroll_ui_test/screens/navigation_bar_screen.dart';
import 'package:stroll_ui_test/utils/theme/app_theme.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  // Set status bar icon and text color
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
      statusBarIconBrightness: Brightness.light, // Light icons (white)
      statusBarBrightness: Brightness.dark, // iOS-specific: dark background
    ),
  );
  runApp(
    // DevicePreview(
    //   builder: (context) =>
    const MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stroll UI Test',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme(),
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      home: const NavigationBarScreen(),
    );
  }
}
