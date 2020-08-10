import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui/icon_constants.dart';

class PostCard extends StatefulWidget {
  final String otherPostProfilePic;
  final String userProfilePic;
  final String name;
  final String likeCount;
  final String postTime;

  PostCard({
    Key key,
    this.otherPostProfilePic,
    this.name,
    this.likeCount,
    this.postTime,
    this.userProfilePic,
  }) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool like = false;
  bool savePost = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(widget.otherPostProfilePic),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 8.0)),
            Text(
              widget.name,
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        Image.network(
          "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
          fit: BoxFit.cover,
          height: 200.0,
          width: 400.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              width: 10.0,
            ),
            GestureDetector(
              onTap: () {
                setState(() => like = !like);
              },
              child: SvgPicture.asset(
                ICON_LIKE,
                height: 25.0,
                color: !like ? Colors.black : Colors.red,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                ICON_COMMENT,
                color: Colors.black,
                height: 25.0,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                ICON_SEND,
                color: Colors.black,
                height: 25.0,
              ),
            ),
            /*IconButton(
              icon: Icon(
                Icons.near_me,
              ),
              onPressed: () {},
            ),*/
            Spacer(),
            IconButton(
              icon: Icon(Icons.bookmark_border),
              color: !savePost ? Colors.black : Colors.red,
              onPressed: () {
                setState(() => savePost = !savePost);
              },
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.likeCount,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(widget.userProfilePic)),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add a comment...",
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.postTime,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
