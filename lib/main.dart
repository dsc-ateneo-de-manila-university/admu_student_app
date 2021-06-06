import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:admu_student_app/constants/app_colors.dart';
import 'package:admu_student_app/models/academic_records.dart';
import 'package:admu_student_app/models/calendar_events.dart';
import 'package:admu_student_app/models/class_schedule.dart';
import 'package:admu_student_app/models/ls_directory.dart';
import 'package:admu_student_app/models/user_cache.dart';
import 'package:admu_student_app/screens/splash_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AcademicRecords()),
      ChangeNotifierProvider(create: (_) => CalendarEvents()),
      ChangeNotifierProvider(create: (_) => ClassSchedule()),
    ],
    child: App(),
  ));

  // load - after runApp to avoid errors
  LSDirectory.load();
  UserCache.load();
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beadle',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.GRAY_LIGHT[2],
        fontFamily: GoogleFonts.dmSans().fontFamily,
        textTheme: TextTheme(
          headline4: GoogleFonts.dmSans(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            height: 1.0,
          ),
          headline5: GoogleFonts.dmSans(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            height: 1.0,
          ),
          headline6: GoogleFonts.dmSans(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            height: 1.0,
          ),
          bodyText1: GoogleFonts.dmSans(fontSize: 16.0),
          bodyText2: GoogleFonts.dmSans(fontSize: 14.0),
          caption: GoogleFonts.dmSans(fontSize: 14.0),
        ),
        primaryColor: AppColors.PRIMARY_MAIN,
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}
