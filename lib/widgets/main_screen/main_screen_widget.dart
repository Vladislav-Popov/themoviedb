import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Movie'),
    Text('TV'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TMDB'),
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Movie',
            icon: Icon(Icons.movie),
          ),
          BottomNavigationBarItem(
            label: 'TV',
            icon: Icon(Icons.live_tv),
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }

  void onSelectTab(int index) {
    if (index == _selectedTab) return;
    setState(() {
      _selectedTab = index;
    });
  }
}
