
import 'package:flutter/material.dart';

void main(){
  return runApp(const GirdViewBuilderWidget());
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children:
              List.generate(10, (index) =>  Column(
                children: [
                  Image.network("https://shotkit.com/wp-content/uploads/2023/06/merlin_212276709_3104aef5-3dc4-4288-bb44-9e5624db0b37-superJumbo.jpg"
                  ,fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,),
                  const SizedBox( height: 20,),
                ],
              ),

          ),
        ),
      ),
    ),
          );
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: GridView.custom(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            mainAxisExtent: 200, // item height
          ), childrenDelegate: SliverChildBuilderDelegate(
              (context,index){
                return Image.network("https://miro.medium.com/v2/resize:fit:5376/1*Cc3m7L_FDlhPTdKxXL8ntw.jpeg");
              },
            childCount: 20,
          ),

          ),
        ),
      ),
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          //on demand render
          child: ListView.builder(itemBuilder: (context,index) =>
        Column(
          children: [
            Image.network("https://shotkit.com/wp-content/uploads/2023/06/merlin_212276709_3104aef5-3dc4-4288-bb44-9e5624db0b37-superJumbo.jpg"
              ,fit: BoxFit.cover,
              width: double.infinity,
              height: 200,),
            const SizedBox( height: 20,),
          ],) ,
            itemCount: 20,
          ),
      ),
    ),
    );
  }
}

class GirdViewBuilderWidget extends StatelessWidget {
  const GirdViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          //on demand render
          child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            mainAxisExtent: 200, // item height
          ), itemBuilder: (context,index)=>
              Image.network("https://miro.medium.com/v2/resize:fit:5376/1*Cc3m7L_FDlhPTdKxXL8ntw.jpeg"),

            itemCount: 200,
          )
        ),
      ),
    );
  }
}




