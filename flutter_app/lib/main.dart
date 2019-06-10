import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter_app/loading.dart';

//程序入口，material风格
void main() => runApp(MaterialApp(
      //Flutter去除右上角Debug标签
      debugShowCheckedModeBanner: false,

      title: '即趣',

      //自定义主题
      theme: themeData,

      //指定加载页面
      home: loadingPage(),


      //设置静态路由
      routes: <String, WidgetBuilder>{
        //一种是命名的路由，一种是构建路由。 命名的路由这种路由的缺点是不能传递参数。
        "company_info": (BuildContext context) => WebviewScaffold(
              url: "https://www.qq.com",
              appBar: AppBar(
                title: Text("简介"),
                leading: IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    //路由到主界面
                    Navigator.of(context).pushReplacementNamed('app');
                  },
                ),
              ),
            ),
      },

    ));

final ThemeData themeData = ThemeData(
  primaryColor: Colors.redAccent,
);
