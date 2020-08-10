import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui/constants/icon_constants.dart';
import 'package:instagram_ui/screen/Home_screen/user_post.dart';
import 'package:instagram_ui/screen/Home_screen/user_story.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'homeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: buildAppBar(context),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 100.0,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => UserAvatar(
                userProfile: index == 0
                    ? 'https://file-examples-com.github.io/uploads/2017/10/file_example_JPG_100kB.jpg'
                    : 'https://homepages.cae.wisc.edu/~ece533/images/pool.png',
                userName: index == 0 ? 'YourStory' : 'userName',
                isShowIcon: index == 0 ? true : false,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) => PostCard(
              name: 'Mayur',
              otherPostProfilePic:
                  'https://homepages.cae.wisc.edu/~ece533/images/monarch.png',
              likeCount: '1,174 likes',
              postTime: '1 day ago',
              userProfilePic:
                  'https://file-examples-com.github.io/uploads/2017/10/file_example_JPG_100kB.jpg',
            ),
          )
        ],
      ),
      bottomNavigationBar: buildBottomNavigator(context),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        'Instagram',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Icon(
        Icons.camera_alt,
        color: Colors.black,
        size: 24.0,
      ),
      actions: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(
              right: 10.0,
            ),
            child: SvgPicture.asset(
              ICON_SEND,
              color: Colors.black,
              height: 25.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildBottomNavigator(BuildContext context) {
    return Container(
      height: 40.0,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                ICON_HOME,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                ICON_SEARCH,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                ICON_Add_CIRCLE,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                ICON_LIKE,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                ICON_PROFILE,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
