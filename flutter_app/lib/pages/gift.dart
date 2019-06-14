import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class GiftPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GiftPage();
  }
}

class _GiftPage extends State<GiftPage>{

  //Container如果作为应用的根节点的话，它的宽高会自动填充为屏幕大小,并且给控件设置边距
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    //row 代表水平布局

    //第一层
    child: Row(
      children: <Widget>[
        // 此组件会填满Row在主轴方向的剩余空间，撑开Row
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //向上布局
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "This is simple flutter app.",

                  //文本样式 加粗
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

              Text("Hello Word",
              style: TextStyle(color: Colors.grey),)
            ],
          ),
        ),

        Icon(Icons.star,
        color: Colors.red[500],),

        Text("41")
      ],
    ),
  );


   Column bulidButtonColumn(IconData icon,String label){
    Color color = Theme.of(context).primaryColor;

    return Column(
      //：在主轴方向占有空间的值，默认是max。
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,color: color,),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(label,style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color
          ),),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    Widget buttonSection = Container(
      child: Row(
        //等比布局
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          bulidButtonColumn(Icons.call, "CALL"),
          bulidButtonColumn(Icons.near_me, "ROUTE"),
          bulidButtonColumn(Icons.share, "SHARE"),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        "daemon not running; starting now at tcp:5037 , daemon started successfully Performing hot reload... Syncing files to device MI 8 Lite... Reloaded 4 of 573 libraries in 557ms.",
        softWrap: true,
      ),
    );

    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text("普通布局"),
//      ),

      body: ListView(
        children: <Widget>[
          Image.asset(
            "assets/images/a1.jpg",
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),

          titleSection,

          buttonSection,

          textSection
        ],
      ),
    );
  }
}
