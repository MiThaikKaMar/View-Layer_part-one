import 'package:flutter/material.dart';

void main() {
  return runApp(const CustomScrollViewAndSliver());
}

class CustomScrollViewAndSliver extends StatelessWidget {
  const CustomScrollViewAndSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverList(delegate: SliverChildBuilderDelegate(
                    (context, index) =>
                    Column(
                      children: [
                        Image.network(
                          "https://shotkit.com/wp-content/uploads/2023/06/merlin_212276709_3104aef5-3dc4-4288-bb44-9e5624db0b37-superJumbo.jpg"
                          , fit: BoxFit.cover,
                          width: double.infinity,
                          height: 200,),
                        const SizedBox(height: 20,),
                      ],
                    ),
                childCount: 20,
              ),
              ),
              SliverGrid(delegate: SliverChildBuilderDelegate(
                    (context, index) =>
                    Image.network(
                        "https://miro.medium.com/v2/resize:fit:5376/1*Cc3m7L_FDlhPTdKxXL8ntw.jpeg")
                , childCount: 30,
              ), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                mainAxisExtent: 200, // item height
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
