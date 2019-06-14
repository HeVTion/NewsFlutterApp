import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MinePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MinePage();
  }
}

class _MinePage extends State<MinePage> with AutomaticKeepAliveClientMixin<MinePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: EdgeInsets.only(top: 100.0),
      child: WebviewScaffold(
        url: "https://www.jianshu.com/sign_in",
        withJavascript: true,
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
