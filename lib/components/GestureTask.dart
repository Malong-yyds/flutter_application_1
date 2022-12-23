import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GestureTask extends StatelessWidget {
  const GestureTask({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // 点击
      onTap: () {
        print("object");
      },
      // 长按
      onLongPress: () {
        print("onlongpress");
      },
      onScaleStart: (details) {
        print("startdetail");
      },
      onScaleUpdate: (details) {
        print("update");
      },
      onScaleEnd: (details) {
        print("onscalend");
      },
      child: Container(
        child: Container(
          color: Color.fromARGB(225, 220, 220, 220),
          child: Center(
            child: Text("flutter手势"),
          ),
        ),
      ),
    );
  }
}
