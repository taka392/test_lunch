import 'package:example/presentation/search_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'rooms.dart';
import 'setting_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  BottomNavigationPageState createState() => BottomNavigationPageState();
}

class BottomNavigationPageState extends State<RootPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const HomePage(),
    const SearchPage(),
    const RoomsPage(),
    const SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: Center(
            child: _widgetOptions[_selectedIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.format_list_bulleted),
                label: 'ホーム',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.label_outline),
                label: '探す',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'メッセージ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.format_list_bulleted),
                label: '設定',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.green,
            onTap: _onItemTapped,
          ),
        ),
      );
}
