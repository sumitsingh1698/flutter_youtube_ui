import 'package:flutter/material.dart';
import 'package:video_assis/pages/homepage.dart';
import 'package:video_assis/pages/videoview.dart';

class Home extends StatefulWidget {
  final List<Tile> data;
  Home(this.data, {Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VideoView(index, widget.data)));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 4.0, color: Colors.white),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        "${widget.data[index].url}",
                        fit: BoxFit.fill,
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
                        "${widget.data[index].channelurl}",
                      ),
                    ),
                    title: Text(
                      "${widget.data[index].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "${widget.data[index].subtitle}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

class MySearch extends SearchDelegate {
  final List<Tile> data;
  MySearch(this.data);
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView(
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
              "${data[2].url}",
            ),
          ),
          title: Text(
            "${data[2].title}",
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
          ),
          subtitle: Container(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              "${data[2].subtitle}",
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
              "${data[1].url}",
            ),
          ),
          title: Text(
            "${data[1].title}",
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
          ),
          subtitle: Container(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              "${data[1].subtitle}",
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
              "${data[0].url}",
            ),
          ),
          title: Text(
            "${data[0].title}",
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
          ),
          subtitle: Container(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              "${data[0].subtitle}",
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
              "${data[3].url}",
            ),
          ),
          title: Text(
            "${data[3].title}",
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
          ),
          subtitle: Container(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              "${data[3].subtitle}",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
