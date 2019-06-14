import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class GiftPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GiftPage();
  }
}

class _GiftPage extends State<GiftPage> with AutomaticKeepAliveClientMixin<GiftPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: EdgeInsets.only(top: 100.0),
      child: WebviewScaffold(
        url: "http://tinterest.lechuangtec.com/janesi-headline/ZQFL/templete/fuLiCenter.html",
        withJavascript: true,
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
