import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/components/friend.dart';

class FriendList extends StatefulWidget {
  const FriendList({super.key});

  @override
  State<FriendList> createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  List<Friend> _friends = [];
  var url = "https://randomuser.me/api/?results=30";

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _loadFriendsData();
  }

  _loadFriendsData() async {
    HttpClient httpClient = HttpClient();
    HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));
    HttpClientResponse response = await request.close();
    var jsonString = await response.transform(utf8.decoder).join();

    setState(() {
      _friends = Friend.resolveDataFromReponse(jsonString);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("好友列表"),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    var content;
    if (_friends.isEmpty) {
      // ignore: prefer_const_constructors
      content = Center(
        child: const CircularProgressIndicator(),
        );
    } else {
      content = ListView.builder(
        itemCount: _friends.length,
        itemBuilder: _buildItem,
      );
    }
    return content;
  }

  Widget _buildItem(context, index) {
    var friend = _friends[index];
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(friend.avatar),
      ),
      title: Text(friend.name),
      subtitle: Text(friend.email),
      trailing: Icon(Icons.arrow_right),
    );
  }
}
