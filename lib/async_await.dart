import 'package:flutter/material.dart';
class async_await_widget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:Column(
        children:[
          Container(
            padding: EdgeInsets.only(top: 32),
            child:Text("非同期処理のテストページ"),
          ),
        ]
      ),
    );
}
}