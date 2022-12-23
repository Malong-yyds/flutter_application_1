

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ButtonTask.dart';
import 'package:flutter_application_1/components/ContainerTask.dart';
import 'package:flutter_application_1/components/GestureTask.dart';
import 'package:flutter_application_1/components/ImageTask.dart';
import 'package:flutter_application_1/components/ListViewTask.dart';
import 'package:flutter_application_1/components/friendlist.dart';
// import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // build  渲染界面
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: FriendList(),
       home: const FirstScreen(),
      routes: <String, WidgetBuilder>{
        '/first': (BuildContext context) => const FirstScreen(),
        '/second': (BuildContext context) => SecondScreen(),
      },
      // initialRoute: '/second',
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
       
//         // body:const ImageTask()
//         // body: const ButtonTask(),
//         // body: const ContainerTask(),
//         // body: GestureTask(),
//         body: ListViewTask(),
//         );
//   }
// }


class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final List<Widget> _children = [
    ScreenWidget("bank"),
    ScreenWidget("contacts"),
    ScreenWidget("music")
  ];
  int _currentindex = 1;

  void onTapAction(int selectindex) {
    setState(() {
      _currentindex = selectindex;
      // print(selectindex);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("FirstScreen Title"),
        leading: const Text('left'),
      ),
      body: _children[_currentindex],
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: _currentindex, onTap: onTapAction,
              // ignore: prefer_const_literals_to_create_immutables
              items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: "bank"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.contacts), label: "contacts"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.library_music), label: "mucis")
          ]),
      drawer: const Drawer(
        child: Center(
          child: Text(
            "Drawer",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondScreen Title"),
      ),
      body: const Center(child: Text("SecondScreen")),
    );
  }
}

class ScreenWidget extends StatelessWidget {
  final String text;
  ScreenWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}
