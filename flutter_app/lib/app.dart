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
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage = new HomePage();
    videoPage = new VideoPage();
    giftPage = new GiftPage();
    minePage = new MinePage();
  }

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
          physics: NeverScrollableScrollPhysics(),
          //禁止页面左右滑动切换
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
    pageControl.jumpToPage(value);
//    pageControl.animateToPage(value,
//        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void pageChange(int value) {

    setState(() {
      if (pageIndex != value) {
        pageIndex = value;
      }
    });
  }

  currentPage() {
    switch (pageIndex) {
      case 0:
        if (homePage == null) {
          homePage = new HomePage();
        }
        return homePage;
      case 1:
        if (videoPage == null) {
          videoPage = new VideoPage();
        }
        return videoPage;
      case 2:
        if (giftPage == null) {
          giftPage = new GiftPage();
        }
        return giftPage;
      case 3:
        if (homePage == null) {
          homePage = new HomePage();
        }
        return minePage == null ? MinePage() : minePage;
    }
  }
}
