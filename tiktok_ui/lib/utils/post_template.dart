import 'package:flutter/material.dart';
import 'package:tiktok_ui/utils/my_button.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String videoDescription;
  final String numberOflikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;

  const PostTemplate({
    super.key,
    required this.username,
    required this.videoDescription,
    required this.numberOflikes,
    required this.numberOfComments,
    required this.numberOfShares,
    this.userPost,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          userPost,
          // user name and caption
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "@$username",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: videoDescription),
                        TextSpan(text: "#fyp #flutter", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // buttons
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(icon: Icons.favorite_rounded, text: numberOflikes),
                  MyButton(icon: Icons.chat_bubble_rounded, text: numberOfComments),
                  MyButton(icon: Icons.send_rounded, text: numberOfShares),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
