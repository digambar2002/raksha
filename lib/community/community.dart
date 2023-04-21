

import 'package:flutter/material.dart';


class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  List<String> posts = []; // List to store posts

  void _addPost(String post) {
    setState(() {
      posts.add(post);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(posts[index]),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      // Update post text as user types
                      // You can customize this to your liking (e.g. using a TextEditingController)
                    },
                    decoration: InputDecoration(
                      labelText: 'Write something...',
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Call _addPost() with the post text when the post button is pressed
                    String post = ''; // Get the post text from the TextField
                    _addPost(post);
                  },
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
