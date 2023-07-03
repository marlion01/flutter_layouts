import 'package:flutter/material.dart';
class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 32),
            child:Text("NewPage1"),
          ),
        ],
      ),
    );
  }
}