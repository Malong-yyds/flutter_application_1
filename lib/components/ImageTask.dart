// ignore_for_file: file_names

import 'package:flutter/material.dart';


class ImageTask extends StatelessWidget {
  const ImageTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/aaa.jpg',
                  width: 120,
                  height: 120,
                ),
                Image.network(
                  'https://wx3.sinaimg.cn/large/e82f983fly1h94g3jfr4yj21qk3rcnfp.jpg',
                  width: 120,
                  height: 120,
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://wx3.sinaimg.cn/large/e82f983fly1h94g3jxpiyj21ie39n1c8.jpg'),
                  radius: 50,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 占位符
                FadeInImage.assetNetwork(
                  placeholder: 'assets/images/aaa.jpg',
                  image:
                      'https://wx3.sinaimg.cn/large/e82f983fly1h94g3jxpiyj21ie39n1c8.jpg',
                  width: 200,
                  height: 120,
                  
                  fit: BoxFit.fill,
                  // fit: BoxFit.contain,
                )
              ],
            ),
            const Text(
              '大家都要好好的',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
        // 富文本
          const  Text.rich(
              TextSpan( text: "我们一起加油",
              style: TextStyle(color: Colors.blue, fontSize: 40.0),)
             
            )
          ],
        );
  }
}