
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(const NavigationDrawerWidget());
}

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
                child: Text("Open Drawer"),
              );
            }
          ),
        ),
        drawer: Builder(
          builder: (context) {
            return Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(child: Text("Drawer Header",
                  style: TextStyle(color: Colors.white,
                  fontSize: 20,),),decoration: BoxDecoration(
                    color: Colors.blue,
                  ),),
                  ListTile(
                    leading: Icon(Icons.message),title: Text("Messages"),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.account_balance),title: Text("Accounts"),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),title: Text("Settings"),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
