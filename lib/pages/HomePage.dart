import 'package:deprecianao/components/CardComponent.dart';
import 'package:deprecianao/fragments/DeprecateFragment.dart';
import 'package:deprecianao/fragments/HomeFragment.dart';
import 'package:deprecianao/fragments/RankingFragment.dart';
import 'package:deprecianao/fragments/RuleFragment.dart';
import 'package:flutter/material.dart';

import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;


 List<Widget> _widgetOptions = <Widget>[
     HomeFragment(),
     DeprecateFragment(),
     RankingFragment(), 
     RuleFragment()
 ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }



  _bottomNavigationBar(){
     return BottomAppBar(
            child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('images/009-checklist-1.png', height: 25),
              title: Text('Depreciações'),
            ),
           
            BottomNavigationBarItem(            
              icon: Image.asset('images/017-speaker.png', height: 25,),
              title: Text('Dedupre'),
            ),
           
            BottomNavigationBarItem(            
              icon: Image.asset('images/004-results.png', height: 25,),
              title: Text('Ranking'),
            ),
           
            BottomNavigationBarItem(            
              icon: Icon(Icons.insert_drive_file, color: Colors.orange),
              title: Text('Regras'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.orange[600],
          onTap: _onItemTapped,
          
          
        ),
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
     );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Depreciador', style: TextStyle(color: Colors.orangeAccent),),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Stack(children: <Widget>[
              IconButton(
                icon: Image.asset('images/014-election.png'),
                onPressed: () => {},
              ),
              Positioned(
                left: 22,
                child: Icon(Icons.brightness_1, color: Colors.red, size: 28,),
              ),
              Positioned(
                left: 27,
                top:7,
                child: Text('+99', style: TextStyle(fontSize: 11 ,color: Colors.white ),),
              ),
            ]),
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
