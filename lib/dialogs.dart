
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(const Dialogs());
}

class Dialogs extends StatelessWidget {
  const Dialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Builder(
              builder: (context) {
                return ElevatedButton(
                  child: const Text("Show Dialog"),
                  onPressed: (){
                    ///show Dialogs
                    showAlertDialog(context);
                   // showCustomDialog(context);
                   // showLoadingDialog(context);
                  },
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}

void showAlertDialog(BuildContext context){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      title: const Text("Hello"),
      content: const Text("This is Alert Dialog."),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: const Text("Close"),),
      ],
    );
  });
}

void showCustomDialog(BuildContext context){
  showDialog(context: context,
      barrierDismissible:false ,
      builder: (context)
  {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text("Custom Dialog",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            const SizedBox(height: 24,),
            Image.network(
                "https://shotkit.com/wp-content/uploads/2023/06/merlin_212276709_3104aef5-3dc4-4288-bb44-9e5624db0b37-superJumbo.jpg"),
            const SizedBox(height: 24,),
            TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: const Text("Close"),),
          ],
        ),
      ),
    );
  });
}

void showLoadingDialog(BuildContext context){
  showDialog(context: context, builder: (context){
    return Dialog(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            CircularProgressIndicator(
              color: Colors.green,
            ),
            SizedBox(width: 20,),
            Text("Loading Data.."),
          ],
        ),
      ),
    );
  });
}
