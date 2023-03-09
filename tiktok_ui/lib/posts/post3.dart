import 'package:flutter/material.dart';
import 'package:tiktok_ui/utils/post_template.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "DEZDMR",
      videoDescription: "cs-go one shot ",
      numberOflikes: "11.0M",
      numberOfComments: "1258",
      numberOfShares: "4000",
      userPost: Container(color: Colors.green[900]),
    );
  }
}
