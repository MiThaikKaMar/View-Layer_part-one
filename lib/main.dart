import 'package:flutter/material.dart';

/// Data display Widgets
void main() {
  runApp(const DataDisplayWidgets());
}

class DataDisplayWidgets extends StatelessWidget {
  const DataDisplayWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "This is Text Widget",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    letterSpacing: 6,
                    height: 1.7, //1.0 - default
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                          text: "This is normal Text. ",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      TextSpan(
                          text: "Highlight Text",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png",
                    width: 240,
                    height: 240,
                    fit: BoxFit.cover, // contain, fill, cover
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Builder(builder: (context) {
                  return TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Text Button pressed"),
                          ),
                        );
                      },
                      child: const Text("This is a Text Button"));
                }),
                Builder(builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Elevated Button is pressed.")));
                    },
                    child: const Text("This is Eleveated Button."),
                  );
                }),
                const Icon(
                  Icons.roundabout_left,
                  color: Colors.red,
                  size: 56,
                ),
                const SizedBox(
                  height: 24,
                ),
                const CustomDropDownButton(),
                const SizedBox(
                  height: 24,
                ),
                const CustomRadioButtons(),
                const SizedBox(
                  height: 24,
                ),
                const CustomCheckBox(),
                const Divider(
                  color: Colors.black,
                  thickness: 6,
                ),
                const CustomRadioButtons(),
                const SizedBox(
                  height: 24,
                ),  const CustomRadioButtons(),
                const SizedBox(
                  height: 24,
                ),  const CustomRadioButtons(),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  var dropDownItems = ["First Item", "Second Item", "Third Item"];
  var selectedItem = "";

  @override
  void initState() {
    // just call one time before rendering widgets
    // TODO: implement initState
    super.initState();
    selectedItem = dropDownItems.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedItem,
        items: dropDownItems
            .map(
              (item) => DropdownMenuItem(
                value: item,
                child: Text(item,style: const TextStyle(color: Colors.black),),
              ),
            )
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedItem = value ?? "";
          });
        });
  }
}

class CustomRadioButtons extends StatefulWidget {
  const CustomRadioButtons({super.key});

  @override
  State<CustomRadioButtons> createState() => _CustomRadioButtonsState();
}

class _CustomRadioButtonsState extends State<CustomRadioButtons> {

  var radioItems = ["First item","Second item", "Third item"];
  var selectedItem = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedItem = radioItems.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
        radioItems.map((item) =>
        Row(
          children: [
            Radio(value: item, groupValue: selectedItem, onChanged: (value){
              setState(() {
                selectedItem = value ?? "";
              });
            }),
            const SizedBox(
              width: 20,
            ),
            Text(item),
          ],
        )
        ).toList(),

    );
  }
}

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {

  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: isChecked, onChanged: (value){
setState(() {
  isChecked = !isChecked;
});
        }),
        Text((isChecked) ? "Checked" : "Unchecked"),
      ],
    );
  }
}


