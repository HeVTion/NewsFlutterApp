import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_app/app.dart';

class loadingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LodingState();
  }
}

class _LodingState extends State<loadingPage> {
  @override
  void initState() {
    super.initState();

    //3秒后做一件事情
    Future.delayed(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context){
            return new app();
          }
      ));
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Center(
        child: Stack(
          //层叠布局
          children: <Widget>[

//            Image.network(
//                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560162370194&d"
//                    "i=cf128f9a4a20bc7d9a544246db8a73b9&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201410%2F25%2F20141025175629_48GJ5.thumb.700_0.jpeg"),

            Image.asset("assets/images/timg.jpg"),

            Center(
              child: Text(
                "启动页",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  decoration: TextDecoration.none
                ),
              ),
            ),

          ],
        ),
      ),
    );


  }
}
