import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://i.pinimg.com/originals/81/65/25/816525a73af77f11f0d7e47e40894fc2.gif",
      "https://64.media.tumblr.com/9eb4199cf4f431e02ac445ac07f7e102/606dc5575a7a4a5d-78/s400x600/5db36c5769ab20630cecc270a0d9ef568b35487e.gif",
      "https://media.tenor.com/jYqfbfE5wU4AAAAM/yay-yes.gif",
      "https://i.pinimg.com/originals/5a/dc/0d/5adc0d082a2d696056f0e4a5322db5a4.gif",
      "https://qph.cf2.quoracdn.net/main-qimg-dfc03d3661265de942834f5a7a00112f",
      "https://i.pinimg.com/originals/2f/74/29/2f74292bc853a862048e08fcbf848df9.gif",
      "https://media.tenor.com/IAI7LjB23BYAAAAd/twice-alcohol-free-taste-of-love-dance.gif",
    ];
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(CupertinoIcons.back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(CupertinoIcons.list_bullet, color: Colors.black),
              onPressed: () {},
            )
          ],
          title: Image.asset(
            'assets/dance_dance.png',
            height: 65,
          ),
          centerTitle: true,
          backgroundColor: Colors.white),
      body: ListView.builder(
        itemCount: images.length, // 이미지 개수만큼 보여주기
        itemBuilder: (context, index) {
          final image = images[index]; // index에 해당하는 이미지
          return Feed(
            imageUrl: image, // imageUrl 전달
          );
        },
      ),
    );
  }
}
