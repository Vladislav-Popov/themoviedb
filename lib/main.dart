import 'package:flutter/material.dart';
import 'package:themoviedb/theme/app_colors.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';
import 'package:themoviedb/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.mainDeepBlue,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppColors.mainDeepBlue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
          )),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
      initialRoute: '/auth',
      // (Данный метод возвращает экран, если произошла ошибка навигации);
      // onGenerateRoute: (RouteSettings settings) {
      //   return MaterialPageRoute(builder: (context) {
      //     return Scaffold(
      //       body: Center(
      //         child: Text('Произошла ошибка навигации'),
      //       ),
      //     );
      //   });
      // },
    );
  }
}
