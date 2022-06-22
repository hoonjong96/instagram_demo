import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/** Feed를 그리는 Class
 */

class Feed extends StatefulWidget {
  const Feed({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl; // 이미지 담을 변수

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {

  // 좋아요 나타내는 변수, 기본 data = false
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 이미지
        Image.network(
          widget.imageUrl,
          height: 350,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            IconButton(
              // isFavorite true일 때 pink, 아니면 black을 넣는다.
              icon: Icon( isFavorite ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                color: isFavorite ? Colors.pink : Colors.black,),
              onPressed: () {
                setState(() {
                  // false -> true , true -> false
                  // setState로 rebuild
                  isFavorite = !isFavorite;
                });
              },
            ),
            IconButton(
              icon: Icon(CupertinoIcons.chat_bubble, color: Colors.black),
              onPressed: () {},
            ),
            // 공백을 만들어주는 Spacer 위젯
            Spacer(),
            IconButton(
              icon: Icon(CupertinoIcons.bookmark, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        // 좋아요
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "2 likes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // 설명
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "안녕하세오 루루에오", style: TextStyle(fontSize: 16),
          ),
        ),
        // 날짜
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "FEBURARY 6",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
