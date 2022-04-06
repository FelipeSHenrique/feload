import 'package:feload/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _selectedScreenIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex],
      floatingActionButton:FloatingActionButton( //Floating action button on Scaffold
        onPressed: (){
          //code to execute on button press
        },
        child: Icon(Icons.download), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
        color: Theme.of(context).colorScheme.primary,
        shape: const CircularNotchedRectangle(), //shape of notch
        notchMargin: 5, //notche margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 60
              ),
              child: IconButton(icon: Icon(Icons.home, color: Colors.white, size: 30,), onPressed: () {},),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 60
              ),
              child: IconButton(icon: Icon(Icons.turned_in, color: Colors.white, size: 30,), onPressed: () {},),
            ),
          ],
        ),
      ),
    );
  }
}
