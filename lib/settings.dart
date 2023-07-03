import 'package:flutter/material.dart';
class setting extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children:<Widget>[
          Container(
            padding: EdgeInsets.only(top: 32),
            child: Text("設定"),
          ),
          Divider(
            height: 0,
            indent: 0,
            endIndent: 0,
            thickness: 1,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
                onPressed: ()=>{},
                child: Text("ウィジェットの配置の設定"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}