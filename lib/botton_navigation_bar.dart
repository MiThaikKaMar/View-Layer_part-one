

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(const BottomNavigationBarWidget());
}

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {

  var currentItem = 0;
  var widgetsToShow= [Center(child: Text("Home")),Center(child: Text("Trending")),Center(child: Text("Library"))
    ,Center(child: Text("Search"))];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: widgetsToShow[currentItem],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.trending_up),label: "Trending"),
            BottomNavigationBarItem(icon: Icon(Icons.library_add),label: "Library"),
            BottomNavigationBarItem(icon: Image.asset("assets/icons/search.png",
            width: 20,
            height: 20,
            color: Colors.grey,),
            label: "Search",
              activeIcon: Image.asset("assets/icons/search.png",
                width: 20,
                height: 20,
              color: Colors.blue,),
            )
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: currentItem,
          showUnselectedLabels: true,
          onTap: (selectedIndex){
            setState(() {
              currentItem = selectedIndex;
            });
          },
        ),
      ),
    );
  }
}
