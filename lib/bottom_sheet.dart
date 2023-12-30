

import 'package:flutter/material.dart';

void main(){
  return runApp(BottomSheetWidget());
}

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: (){
                  ///show bottom sheet
                  showCustomButtonSheet(context);
                },
                child: Builder(
                  builder: (context) {
                    return Text("Show Bottom Sheet");
                  }
                ),
              );
            }
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: (){
                showCustomButtonSheet(context);
              },
              tooltip: "Show tooltip",
              child: Icon(Icons.show_chart),
            );
          }
        ),
      ),
    );
  }
}

void showCustomButtonSheet(BuildContext context){
  showModalBottomSheet(
    isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context, builder: (context){
    return FractionallySizedBox(
      heightFactor: 0.9,// default 0.1
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: ListView.builder(itemBuilder: (context,index){
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bottom Sheet"),
                  SizedBox(height: 20,)
                ],
              ),
            );
          },
          itemCount: 30,),
      ),
    );
  });
}
