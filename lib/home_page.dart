import 'package:flutter/material.dart';
import 'package:flutter_layouts_trainning/grid_calusel_scrolls_card.dart';
import 'NewView1.dart';
import 'async_await.dart';
import 'settings.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:Column(
        children:<Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              TextButton(
                onPressed: ()=>{
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return async_await_widget();
                    })
                  )
                },
                child:Text("非同期処理のテスト"),
                style:TextButton.styleFrom(
                  primary:Colors.red,
                )
              ),
            ]
          ),
          const Divider(
            height: 0,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Colors.red,
          ),
          Container(
            padding: EdgeInsets.only(top: 32),
            child: Text('TextButton'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
                onPressed: null,
                child: Text('disabled'),
              ),
              TextButton(
                onPressed: () =>{//右から左へページ遷移が行われる
                  Navigator.of(context).push(PageRouteBuilder(
                pageBuilder:(context,animation,secondaryAnimation){
                    return NextPage();
                  },
                transitionsBuilder:(context,animation,secondaryAnimation,child){
                  final Offset begin=Offset(1.0,0.0);
                  final Offset end=Offset.zero;
                  final Animatable<Offset>tween=Tween(begin:begin,end:end)
                  .chain(CurveTween(curve: Curves.easeInOut));
                  final Animation<Offset>offsetAnimation=animation.drive(tween);
                  return SlideTransition(position: offsetAnimation,
                  child:child,);
                  },
                  ),
                  ),
                },
                child: Text('NextPageに進む'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.red,
                ),
                  onPressed: ()=>{
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return grid_calusel_scrolls_card_training();
                        })
                    )
                  },
                child: Text('グリッドとカルーセル'),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 32),
            child: Text('OutlinedButton'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              OutlinedButton(
                onPressed: null,
                child: Text('disabled'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('enabled'),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: Text('enabled'),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 32),
            child: Text('ElevatedButton'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: null,
                child: Text('設定'),
              ),
              ElevatedButton(
                onPressed: ()=>{
                  Navigator.of(context).push(
                    PageRouteBuilder(pageBuilder: (context,animation, secondaryAnimation){
                      return setting();
                      },
                    ),
                  )
                },
                child: Text('設定'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  elevation: 16,
                ),
                child: Text('enabled'),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 32),
            child: Text('IconButton'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.thumb_up),
              ),
              IconButton(
                color: Colors.pink,
                onPressed: () {},
                icon: Icon(Icons.favorite),
              ),
              IconButton(
                iconSize: 64,
                onPressed: () {},
                icon: Icon(Icons.flight),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 32),
            child: Text('アイコン＋テキスト'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.thumb_up),
                label: Text('Good'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.favorite, color: Colors.pink),
                label: Text('Like'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.flight),
                label: Text('Flight'),
              ),
            ],
          ),
        ],
      ),

    );
  }
}