import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserAvatar extends StatefulWidget {
  final String userProfile;
  final String userName;
  final bool isShowIcon;

   UserAvatar({
    Key key,
    this.userProfile,
    this.userName,
    this.isShowIcon = false,
  }) : super(key: key);

  @override
  _UserAvatarState createState() => _UserAvatarState();
}

class _UserAvatarState extends State<UserAvatar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  widget.userProfile,
                ),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            child: widget.isShowIcon == true
                ? Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 20.0,
                      width: 18.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Icon(
                        Icons.add,
                        size: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                : SizedBox(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.0),
            child: Text(
              widget.userName,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
