import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(const ContainerWidgets());
}

class ContainerWidgets extends StatelessWidget {
  const ContainerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  // can decorate, margin, spacing
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  // padding: EdgeInsets.all(24),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.red),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(50.0),
                    // child: Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        color: Colors.white, fontSize: 20,
                        // backgroundColor: Colors.amber,
                      ),
                    ),
                    // ),
                  ),
                ),
                const SizedBox(
                  // can define just width, height
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text("This is Text in SizedBox Widget."),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
