import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:post_it/src/actions/index.dart';
import 'package:post_it/src/actions/posts/index.dart';
import 'package:post_it/src/containers/auth/user_container.dart';
import 'package:post_it/src/models/index.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage();

  @override
  _AddPostPageState createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  final TextEditingController _message = TextEditingController();

  void _response(BuildContext context, AppAction action) {
    if (action is CreatePostSuccessful) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Add New Post',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 28.0, left: 24.0, right: 24.0),
                child: TextField(
                  controller: _message,
                  decoration: const InputDecoration(
                    hintText: 'Type your message...',
                    border: InputBorder.none,
                  ),
                  maxLines: 30,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints.tightFor(
                  width: double.infinity, height: 48),
              child: ElevatedButton(
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(CreatePost(
                      message: _message.text,
                      token: user?.token,
                      response: (AppAction action) =>
                          _response(context, action)));
                },
                child: const Text('SUBMIT'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
