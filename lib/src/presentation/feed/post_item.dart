import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:post_it/src/models/index.dart';

class PostItem extends StatelessWidget {
  const PostItem(this.post);

  final Post post;

  @override
  Widget build(BuildContext context) {
    final DateTime dateTime = DateTime.parse(post.createdAt);
    final String date =
        DateFormat('hh:mm, d MMM yyyy').format(dateTime).toString();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Theme.of(context).accentColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 14.0, bottom: 16.0, left: 18, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              post.userId == null ? 'Anonymous' : post.displayName!,
              style: TextStyle(
                color: post.displayName == null
                    ? const Color(0xFFEEC627)
                    : const Color(0xFFEE8A27),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Text(
                post.message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const SizedBox(),
                Text(
                  date,
                  style: const TextStyle(
                    color: Color(0xFFAEB4CF),
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
