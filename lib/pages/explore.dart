import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_assis/pages/homepage.dart';

class Explore extends StatefulWidget {
  final List<Tile> data;
  Explore(this.data, {Key key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<Gridvalues> griddata = [
    Gridvalues(
        title: "Trending",
        icon: FaIcon(
          FontAwesomeIcons.gripfire,
          color: Colors.white,
          size: 25,
        ),
        color: Colors.red[300]),
    Gridvalues(
        title: "Music",
        icon: FaIcon(
          FontAwesomeIcons.music,
          color: Colors.white,
          size: 25,
        ),
        color: Colors.blue[300]),
    Gridvalues(
        title: "Gamming",
        icon: FaIcon(
          FontAwesomeIcons.headset,
          color: Colors.white,
          size: 25,
        ),
        color: Colors.orange[100]),
    Gridvalues(
        title: "News",
        icon: FaIcon(
          FontAwesomeIcons.newspaper,
          color: Colors.white,
          size: 25,
        ),
        color: Colors.blue[900]),
    Gridvalues(
        title: "Films",
        icon: FaIcon(
          FontAwesomeIcons.film,
          color: Colors.white,
          size: 25,
        ),
        color: Colors.yellow[600]),
    Gridvalues(
        title: "Fashion & beauty",
        icon: FaIcon(
          FontAwesomeIcons.tshirt,
          color: Colors.white,
          size: 25,
        ),
        color: Colors.grey[300]),
    Gridvalues(
        title: "Learning",
        icon: FaIcon(
          FontAwesomeIcons.graduationCap,
          color: Colors.white,
          size: 25,
        ),
        color: Colors.green[300]),
    Gridvalues(
        title: "Live",
        icon: FaIcon(
          FontAwesomeIcons.satelliteDish,
          color: Colors.white,
          size: 25,
        ),
        color: Colors.orange[300]),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3.5,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: griddata[index].color,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Row(
                        children: [
                          griddata[index].icon,
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "${griddata[index].title}",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ));

                // return new Container(
                //   margin: EdgeInsets.all(10),
                //   color: griddata[index].color,
                //   child: Row(
                //     children: [
                //       griddata[index].icon,
                //       Text("${griddata[index].title}")
                //     ],
                //   ),
                // );
              },
              childCount: 8,
            )),
        SliverFixedExtentList(
          itemExtent: 30.0,
          delegate: SliverChildListDelegate(
            [
              Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Trending",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left),
                    ],
                  )),
            ],
          ),
        ),
        SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 250,
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 4.0, color: Colors.white),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Image.network(
                            "${widget.data[2].url}",
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
                      )
                    ],
                  ),
                )
              ]),
            ))
      ],
    );
  }
}

class Gridvalues {
  String title;
  FaIcon icon;
  Color color;
  Gridvalues({@required this.title, @required this.icon, @required this.color});
}
