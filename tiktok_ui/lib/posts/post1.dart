import 'package:flutter/material.dart';
import 'package:tiktok_ui/utils/post_template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "rowleyes",
      videoDescription: "warframe kuva farm ",
      numberOflikes: "1.2M",
      numberOfComments: "5465",
      numberOfShares: "154",
      userPost: Container(color: Colors.blue),
    );
  }
}
