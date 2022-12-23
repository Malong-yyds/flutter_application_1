import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewTask extends StatefulWidget {
  const ListViewTask({super.key});

  @override
  State<ListViewTask> createState() => _ListViewTaskState();
}

class _ListViewTaskState extends State<ListViewTask> {
  final List<String> items = List.generate(20, (index) => 'listView');

  @override
  Widget build(BuildContext context) {
    // return getListView1();
    return getListView3();
  }

  // 方法一使用简单，一般使用与小数据量的时间布局
  getListView1() {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Text("123456789"),
        Text("1123456789"),
        Text("123456789"),
        Text("1123456789"),
        Text("1123456789"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
      ],
    );
  }

  getListView2() {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext buildContext, int index) {
          var item = items[index];
          // return Text('$index');
          return Text(item + " " + '${index}');
        });
  }

  getListView3() {
    return ListView.separated(
      itemBuilder: (BuildContext buildContext, int index) {
        var item = items[index];
        // return Text('$index');
        return Text(item + " " + '${index}');
      },
      separatorBuilder: (BuildContext buildContext, int index) {
        return Divider(color: Colors.red,height: 20,endIndent: 10,);
      },
      itemCount: items.length,
    );
  }
}
