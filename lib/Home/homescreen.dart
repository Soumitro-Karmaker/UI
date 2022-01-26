import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Hotel',
      style: optionStyle,
    ),
    Text(
      'Index 2: Skitting',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 28, left: 28, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                        image: DecorationImage(
                          image: AssetImage('images/filter.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                        image: DecorationImage(
                          image: AssetImage('images/search.png',),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 45, left: 28),
                child: Text('Explore\nthe Nature',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                  ),

                ),
              ),
              Container(
                height: 30,
                margin: (EdgeInsets.only(top: 28, left: 15,)),
                child: DefaultTabController(length: 3,
                  child: TabBar(
                    labelPadding: EdgeInsets.only(left: 14, right: 14),
                    indicatorPadding: EdgeInsets.only(left: 14, right: 14),
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,

                    tabs: [
                      Tab(
                        child: Container(
                          child: Text('Recommended'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Popular'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('New Destination'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 200.0,
                      color: Colors.red,
                    ),
                    Container(
                      width: 200.0,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 200.0,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.downhill_skiing),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
