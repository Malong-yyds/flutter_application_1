import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContainerTask extends StatelessWidget {
  const ContainerTask({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   // 没有子节点时候，container的大小尽可能的大，除非加入约束
    //   // 如果有子节点，大小会按照子节点大小去适应
    //   color: Colors.red,
    //   child:  Text("data"),
    //   // width: 200,
    //   // height: 300,
    //   // margin: EdgeInsets.all(40),
    //   // constraints: BoxConstraints(
    //   //   maxHeight:400,
    //   //   maxWidth: 200,
    //   //   minHeight: 150,
    //   //   minWidth: 100
    //   //   ),
    //   constraints: BoxConstraints.expand(),
    // );
    // return Center(
    //   child: Container(
    
    //   color: Colors.red,
      
    //   // width: 200,
    //   // height: 300,
    //   // child: Center(
    //   //   child:  Text(
    //   //     "data",
    //   // style: TextStyle(
    //   //   fontSize: 30,
    //   //   color: Colors.amberAccent
    //   //   ),
    //   // ),
    //   // // alignment:Alignment(0,0),
    //   // ),
    //   child: Transform.scale(
    //     scale: 1.5,
    //     child: FlutterLogo(
    //       size: 200,
    //     ),
    //   ),
      
    // ),
      
    // ) ;
    return Padding(
      // padding: EdgeInsets.all(20),
      // padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
      padding: EdgeInsets.only(left: 10,right: 20),
      child: Container(
        color: Colors.red,
      ),
    );
  }
}