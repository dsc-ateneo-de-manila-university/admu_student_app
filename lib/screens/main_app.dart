import 'package:flutter/material.dart';
import 'package:admu_student_app/main.dart';
import 'package:admu_student_app/screens/calendar_page.dart';
import 'package:admu_student_app/screens/home_page.dart';
import 'package:admu_student_app/screens/qpi_page.dart';
import 'package:admu_student_app/screens/schedule_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final tabs = [
    HomePage(),
    CalendarPage(),
    SchedulePage(),
    QPIPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, //Highlights which page the user is
        type: BottomNavigationBarType.fixed, //Shows page name even if unselected
        selectedItemColor: PrimaryColor,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? new Image.asset(
              "assets/home_clicked.png",
              height: 32,
              width: 32,
            )
                : new Image.asset(
              "assets/home_unclicked.png",
              height: 32,
              width: 32,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? new Image.asset(
              "assets/calendar_clicked.png",
              height: 32,
              width: 32,
            )
                : new Image.asset(
              "assets/calendar_unclicked.png",
              height: 32,
              width: 32,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? new Image.asset(
              "assets/clock_clicked.png",
              height: 32,
              width: 32,
            )
                : new Image.asset(
              "assets/clock_unclicked.png",
              height: 32,
              width: 32,
            ),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3
                ? new Image.asset(
              "assets/qpi_clicked.png",
              height: 32,
              width: 32,
            )
                : new Image.asset(
              "assets/qpi_unclicked.png",
              height: 32,
              width: 32,
            ),
            label: 'QPI',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),


      //DRAWER
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('LOREM I. PSUM',
                  style:
                  GoogleFonts.dmSans(
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                accountEmail: Text('lorem.ipsum.@obf.ateneo.edu',
                  style:
                  GoogleFonts.dmSans(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Colors.white70,
                    ),
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: PrimaryColor,
                  child: new Container(
                    width: 100,
                    height: 100,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                  //container can be changed to:
                  //backgroundImage: NetworkImage("photo url"),
                    ),
                  ),
                ),
            ),

          //LIST TILE 1
          ListTile(
            title: Container(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
              decoration: BoxDecoration(
                border: Border(bottom:
                BorderSide(color: Colors.grey),
                ),
              ),
              child: Text('Lorem Ipsum 1'),
            ),
            onTap: (){
              Navigator.pop(context);
              },
          ),

          //LIST TILE 2
          ListTile(
            title:Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              decoration: BoxDecoration(
                border: Border(bottom:
                BorderSide(color: Colors.grey),
                ),
              ),
              child: Text('Lorem Ipsum 2'),
            ),
            onTap: (){
              Navigator.pop(context);
            },
          ),

            //LIST TILE 3
            ListTile(
              title:Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                decoration: BoxDecoration(
                  border: Border(bottom:
                  BorderSide(color: Colors.grey),
                  ),
                ),
                child: Text('Lorem Ipsum 3'),
              ),
            onTap: (){
              Navigator.pop(context);
            },
          ),

            //LIST TILE 4
            ListTile(
              title:Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                decoration: BoxDecoration(
                  border: Border(bottom:
                  BorderSide(color: Colors.grey),
                  ),
                ),
                child: Text('Lorem Ipsum 4'),
              ),
            onTap: (){
              Navigator.pop(context);
            },
          ),

            //LIST TILE 5
            ListTile(
              title:Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                decoration: BoxDecoration(
                  border: Border(bottom:
                  BorderSide(color: Colors.grey),
                  ),
                ),
                child: Text('Lorem Ipsum 5'),
              ),
            onTap: (){
              Navigator.pop(context);
            },
          ),

            //LIST TILE 6
            ListTile(
              title:Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                decoration: BoxDecoration(
                  border: Border(bottom:
                  BorderSide(color: Colors.grey),
                  ),
                ),
                child: Text('Log Out'),
              ),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
  );
  }
}