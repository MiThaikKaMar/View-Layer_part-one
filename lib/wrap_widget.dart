
import 'package:flutter/material.dart';

void main(){
  return runApp(const WrapWidget());
}

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Wrap(
            alignment: WrapAlignment.end,
            direction: Axis.horizontal,
            spacing: 8,
            //runSpacing: 7, //crossAxis
            children: [
              Chip(label: Text("First chip"),
              backgroundColor: Colors.yellow,),
              Chip(label: Text("First chip"),
                backgroundColor: Colors.yellow,),
              Chip(label: Text("First chip"),
                backgroundColor: Colors.yellow,),
              Chip(label: Text("First chip"),
                backgroundColor: Colors.yellow,),
              Chip(label: Text("First chip"),
                backgroundColor: Colors.yellow,),
              Chip(label: Text("First chip"),
                backgroundColor: Colors.yellow,),
              Chip(label: Text("First chip"),
                backgroundColor: Colors.yellow,),
              Chip(label: Text("First chip"),
                backgroundColor: Colors.yellow,),
              Chip(label: Text("First chip"),
                backgroundColor: Colors.yellow,),
              Chip(label: Text("First chip"),
                backgroundColor: Colors.yellow,),
            ],
          ),
        )
      ),
    );
  }
}
