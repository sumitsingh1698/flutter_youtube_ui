import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_assis/pages/home.dart';
import 'package:video_assis/pages/library.dart';
import 'package:video_assis/pages/notifications.dart';
import 'package:video_assis/pages/subscription.dart';

import 'explore.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int bottomSelectedIndex = 0;

  List<Tile> data = [
    Tile(
      title: "Mirzapur 2 - Release Date Announcement | Amazon Original",
      url:
          "https://assets-news-bcdn.dailyhunt.in/cmd/resize/400x400_80/fetchdata16/images/26/79/db/2679db127a7d1c107a2d88fcad2954e5ed04ed492e2e3aa760da9644aa976c8a.png",
      subtitle:
          "Prime Video ${String.fromCharCode(0x2022)} 453k views ${String.fromCharCode(0x2022)} Streamed 4 days ago",
      channelurl:
          "https://images-eu.ssl-images-amazon.com/images/I/41mpv9rBhmL.png",
    ),
    Tile(
      title:
          "Yaara | Offical Trailer | A ZEE5 Original Film | Streaming Now On ZEE5",
      url:
          "https://images.firstpost.com/wp-content/uploads/2020/07/yaara-zee5-640.jpg?impolicy=website&width=640&height=363",
      subtitle:
          "ZEE% ${String.fromCharCode(0x2022)} 453M views ${String.fromCharCode(0x2022)} Streamed 10 days ago",
      channelurl:
          "https://analyticsindiamag.com/wp-content/uploads/2020/06/zee5.jpg",
    ),
    Tile(
      title:
          "Breathe 2 - Offical Trailer 2020 (Hindi) | R. Madhavan, Amit Sadh | Amazon Prime Video",
      url:
          "https://upload.wikimedia.org/wikipedia/en/thumb/0/0a/Breathe_Into_The_Shadows_Poster.jpeg/250px-Breathe_Into_The_Shadows_Poster.jpeg",
      subtitle:
          "Prime Video ${String.fromCharCode(0x2022)} 4M views ${String.fromCharCode(0x2022)} Streamed 1 years ago",
      channelurl:
          "https://images-eu.ssl-images-amazon.com/images/I/41mpv9rBhmL.png",
    ),
    Tile(
      title: "Criminal Justice - Offical Trailer | Hotstar Specials",
      url:
          "https://www.talentown.in/wp-content/uploads/2020/01/criminal-justice-story.jpg",
      subtitle:
          "Hotstar ${String.fromCharCode(0x2022)} 4B views ${String.fromCharCode(0x2022)} Streamed 2 years ago",
      channelurl:
          "https://lh3.googleusercontent.com/bHag_Q5sGOjrRDGsjFSII1O4CMr_Mz5k5gNjLAKeJhjKoGqjcYk-wcLXJQfB5DXqKdw",
    ),
  ];

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          activeIcon: Icon(Icons.home, color: Colors.blue),
          icon: new Icon(Icons.home, color: Colors.black54),
          title: new Text(
            'Home',
            style: TextStyle(color: Colors.black54, fontSize: 11),
          )),
      BottomNavigationBarItem(
          activeIcon: Icon(Icons.explore, color: Colors.blue),
          icon: new Icon(Icons.explore, color: Colors.black54),
          title: new Text(
            'Explore',
            style: TextStyle(color: Colors.black54, fontSize: 11),
          )),
      BottomNavigationBarItem(
          activeIcon: Icon(Icons.subscriptions, color: Colors.blue),
          icon: new Icon(Icons.subscriptions, color: Colors.black54),
          title: new Text(
            'Subscription',
            style: TextStyle(color: Colors.black54, fontSize: 11),
          )),
      BottomNavigationBarItem(
          activeIcon: Icon(Icons.notifications, color: Colors.blue),
          icon: Stack(
            children: [
              Positioned(
                left: 10,
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(
                      foregroundColor: Colors.red,
                      maxRadius: 7,
                      backgroundColor: Colors.red,
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      )),
                ),
              ),
              new Icon(Icons.notifications, color: Colors.black54)
            ],
          ),
          title: new Text(
            'Notification',
            style: TextStyle(color: Colors.black54, fontSize: 11),
          )),
      BottomNavigationBarItem(
          activeIcon: Icon(Icons.video_library, color: Colors.blue),
          icon: new Icon(Icons.video_library, color: Colors.black54),
          title: new Text(
            'Notification',
            style: TextStyle(color: Colors.black54, fontSize: 11),
          )),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        Home(data),
        Explore(data),
        Subcription(data),
        Notificationpage(data),
        Library(data)
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            bottomTapped(index);
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: bottomSelectedIndex,
          showUnselectedLabels: true,
          backgroundColor: Theme.of(context).primaryColor,
          items: buildBottomNavBarItems()),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(
                Icons.videocam,
                color: Colors.black54,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black54,
              ),
              onPressed: () =>
                  showSearch(context: context, delegate: MySearch(data))),
          IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black54,
              ),
              onPressed: null),
        ],
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            FaIcon(
              FontAwesomeIcons.youtube,
              color: Colors.red,
              size: 25,
            ),
            Text(
              "YouTube",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: buildPageView(),
    );
  }
}

class Tile {
  String title;
  String url;
  String subtitle;
  String channelurl;
  Tile(
      {@required this.title,
      @required this.url,
      @required this.subtitle,
      @required this.channelurl});
}
