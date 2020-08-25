import 'package:flutter/material.dart';
import 'package:video_assis/pages/homepage.dart';

class Notificationpage extends StatefulWidget {
  final List<Tile> data;
  Notificationpage(this.data, {Key key}) : super(key: key);

  @override
  _NotificationpageState createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    trailing: Container(
                      child: Icon(Icons.more_vert),
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "${widget.data[2].channelurl}",
                      ),
                    ),
                    title: Text(
                      "${widget.data[2].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "${widget.data[2].subtitle}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    trailing: Container(
                      child: Icon(Icons.more_vert),
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "${widget.data[1].channelurl}",
                      ),
                    ),
                    title: Text(
                      "${widget.data[1].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "${widget.data[1].subtitle}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    trailing: Container(
                      child: Icon(Icons.more_vert),
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "${widget.data[3].channelurl}",
                      ),
                    ),
                    title: Text(
                      "${widget.data[3].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "${widget.data[3].subtitle}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    trailing: Container(
                      child: Icon(Icons.more_vert),
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "${widget.data[0].channelurl}",
                      ),
                    ),
                    title: Text(
                      "${widget.data[0].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "${widget.data[0].subtitle}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    trailing: Container(
                      child: Icon(Icons.more_vert),
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "${widget.data[1].channelurl}",
                      ),
                    ),
                    title: Text(
                      "${widget.data[1].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "${widget.data[1].subtitle}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    trailing: Container(
                      child: Icon(Icons.more_vert),
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "${widget.data[2].channelurl}",
                      ),
                    ),
                    title: Text(
                      "${widget.data[2].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "${widget.data[2].subtitle}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    trailing: Container(
                      child: Icon(Icons.more_vert),
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "${widget.data[0].channelurl}",
                      ),
                    ),
                    title: Text(
                      "${widget.data[0].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "${widget.data[0].subtitle}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    trailing: Container(
                      child: Icon(Icons.more_vert),
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "${widget.data[3].channelurl}",
                      ),
                    ),
                    title: Text(
                      "${widget.data[3].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "${widget.data[3].subtitle}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    trailing: Container(
                      child: Icon(Icons.more_vert),
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "${widget.data[2].channelurl}",
                      ),
                    ),
                    title: Text(
                      "${widget.data[2].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "${widget.data[2].subtitle}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    trailing: Container(
                      child: Icon(Icons.more_vert),
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "${widget.data[1].channelurl}",
                      ),
                    ),
                    title: Text(
                      "${widget.data[1].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "${widget.data[1].subtitle}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        )

        //-----------------
      ],
    );
  }
}
