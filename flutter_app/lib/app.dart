import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/video.dart';
import 'pages/gift.dart';
import 'pages/mine.dart';

class app extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _app();
  }
}

class _app extends State<app> {
  //当前页面索引
  int pageIndex = 0;
  var pageControl = PageController(initialPage: 0);

  //声明四个页面
  HomePage homePage;
  VideoPage videoPage;
  GiftPage giftPage;
  MinePage minePage;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text('即趣'),
        leading: Text(''),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.search),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: PageView.builder(
          onPageChanged: pageChange,
          controller: pageControl,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return currentPage();
          }),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.redAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('趣闻'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            title: Text('视频'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text('福利'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            title: Text('我的'),
          )
        ],
        onTap: onTap,
        currentIndex: pageIndex,
      ),
    );
  }

  // bottomnaviagtionbar 和 pageview 的联动
  void onTap(int value) {
    pageControl.animateToPage(value,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void pageChange(int value) {
    setState(() {
      if (pageIndex != value) {
        pageIndex = value;
      }
    });
  }

  Widget currentPage() {
    switch (pageIndex) {
      case 0:
        return homePage == null ? new HomePage() : homePage;
      case 1:
        return videoPage == null ? new VideoPage() : videoPage;
      case 2:
        return giftPage == null ? new GiftPage() : giftPage;
      case 3:
        return minePage == null ? new MinePage() : minePage;
    }
  }
}
