import 'package:finekube/presentation/home_page/home_screen.dart';
import 'package:finekube/presentation/main_page/main_page/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          }),
      bottomNavigationBar: const BottomNavigationWidgets(),
    );
  }
}
