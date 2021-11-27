import 'package:chapter2flutter/card2.dart';
import 'package:chapter2flutter/card3.dart';
import 'package:chapter2flutter/casd1.dart';
import 'package:flutter/material.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 7
  int _selectedIndex = 0;

// 8
  static List pages = [
    const Card1(),
    const Card2(),
    Card3(),
    Container(color: Colors.blue)
  ];

// 9
  void _onItemTapped(int index) => setState(() => _selectedIndex = index);
//  ! Set state tells the _selectedIndex the index has been chnage please the it....
//   AND UPDATE YOURSELF
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          // 2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectedIndex],

      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
// 10
        currentIndex: _selectedIndex,
// 11
        onTap: _onItemTapped,

        // 6
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
