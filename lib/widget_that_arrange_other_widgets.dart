import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(const WidgetThatArrangeOtherWidgets());
}

class WidgetThatArrangeOtherWidgets extends StatelessWidget {
  const WidgetThatArrangeOtherWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                        color: Colors.amber,
                        child: Text("First Text")),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        color: Colors.red,
                        child: Text("Secong Text")),
                  ),
                  Container(
                      color: Colors.green,
                      child: Text("Third Text")),
                ],
              ),
              SizedBox(height: 24,),
             // Expanded(
             //   child:
                Container(
                  color: Colors.red,
                  child: const Column(
//mainAxisSize: MainAxisSize.max, // not working in nested for child column
                    children: [
                      Text("First Text"),
                      Text("Second Text"),
                      Text("Third Text"),
                    ],
                  ),
                ),
            //  )
const SizedBox(
  height: 24,
),
          Expanded(child: Container(
            color: Colors.blue,
            child: Stack(
              children: [
                Positioned.fill(
                    child: Container(
                        color: Colors.yellow,
                        child: Text("Second Text"))),
                const Positioned(
                    top: 100,
                    left: 48,
                    child: Text("First Text")),

                    const Align(
                        alignment: Alignment.bottomRight,
                        child: Text("Third Text")),
            ],
                    ),
          ))
            ],
          ),
        ),
      ),
    );
  }
}
