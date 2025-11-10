import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import '/core/di.dart';
import '/core/constants/app_constants.dart';
import '/core/extensions/context_extensions.dart';
import '/todone_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocDir.path);
  setupDI();
  await ScreenUtil.ensureScreenSize();
  runApp(const ToDoneApp());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppConstants.appName,
          style: context.theme.textTheme.titleMedium,
        ),
      ),
      body: Center(
        child: Text(
          context.localize.welcomeMessage,
          style: context.theme.textTheme.bodyMedium,
        ),
      ),
    );
  }
}
