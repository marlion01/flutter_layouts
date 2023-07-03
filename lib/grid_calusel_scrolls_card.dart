import 'package:flutter/material.dart';
class grid_calusel_scrolls_card_training extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:Column(
        children:[
          Container(
            child: Text("グリッドとカルーセルとスクロールとカードのテストページ"),
          ),
        ]
      ),
    );
  }
}