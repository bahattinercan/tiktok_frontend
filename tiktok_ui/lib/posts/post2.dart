import 'package:flutter/material.dart';
import 'package:tiktok_ui/utils/post_template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "vornerys",
      videoDescription: "valorant aim bot ",
      numberOflikes: "33.5M",
      numberOfComments: "54855",
      numberOfShares: "353",
      userPost: Container(color: Colors.purple[900]),
    );
  }
}
