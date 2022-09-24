import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidgets extends StatelessWidget {
  const BottomNavigationWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              onTap: ((indexvalue) {
                indexChangeNotifier.value = indexvalue;
              }),
              currentIndex: newIndex,
              elevation: 0,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.grey,
              selectedIconTheme: const IconThemeData(color: Colors.black),
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              items: [
                const BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: SizedBox(
                        width: width / 15,
                        child: Image.asset('assets/history.png')),
                    label: "History"),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.lightbulb_outline), label: "Fast Laughs"),
                BottomNavigationBarItem(
                    icon: Container(
                      width: width / 7,
                      height: height / 20,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 223, 250, 160),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: width / 12,
                      ),
                    ),
                    label: "Fast Laughs"),
              ]);
        });
  }
}
