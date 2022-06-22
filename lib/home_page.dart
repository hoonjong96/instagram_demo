import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'feed.dart';

/** Main Screen Settings
 */

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final List<String> images = [
      "https://i.pinimg.com/originals/8a/ea/e3/8aeae3420e29402f02d34970b731cb25.jpg",
      "https://cdn.ppomppu.co.kr/zboard/data3/2018/1113/1542099964_6119_SmartSelect_20181113_180333_YouTube.jpg",
      "https://mblogthumb-phinf.pstatic.net/MjAxOTExMjJfODMg/MDAxNTc0NDA1OTMxOTMx.0I6_UWjM8oZQZp3oGrrNIm25cBOetNqMaHtyhmUdlbYg.VJEdvAwF9RxvRkH-XLyJGqTQW8dy3r8es1su2HGy3Ngg.JPEG.rlatjsgkr92/NaverBlog_20170831_103916_01-20191122-153322.jpg?type=w800",
      "https://i.pinimg.com/550x/0f/ee/15/0fee1514b9a26e6eaa97d267cb36f9d2.jpg",
      "https://pbs.twimg.com/media/DX06eH7UMAAslT8.jpg",
      "https://pbs.twimg.com/media/Eej5EaXU0AIw30J.jpg",
      "https://pbs.twimg.com/media/DMuz1lLVoAE5El8.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/logo.png', height: 30,),
        centerTitle:  true,
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),

      // Feed 부분
      // 처리할 위젯 Refactor -> Extract Widget
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          String image = images[index];
          return Feed(imageUrl: image);
        },
      )
    );
  }
}

