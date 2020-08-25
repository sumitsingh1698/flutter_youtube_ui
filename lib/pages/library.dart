import 'package:flutter/material.dart';
import 'package:video_assis/pages/homepage.dart';

class Library extends StatefulWidget {
  final List<Tile> data;

  Library(this.data, {Key key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: 185.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.data.length,
              itemBuilder: (context, index) {
                return Container(
                    padding: EdgeInsets.all(5),
                    width: 160.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 80,
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 4.0, color: Colors.white),
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
                          contentPadding: EdgeInsets.fromLTRB(2, 0, 0, 2),
                          // leading: CircleAvatar(
                          //   radius: 20,
                          //   backgroundImage: NetworkImage(
                          //     "${widget.data[index].channelurl}",
                          //   ),
                          // ),
                          title: Text(
                            "${widget.data[index].title.substring(0, 40)}...",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          // subtitle: Container(
                          //   padding: EdgeInsets.only(top: 5),
                          //   child: Text(
                          //     "${widget.data[index].subtitle}",
                          //     style: TextStyle(
                          //       color: Colors.black54,
                          //       fontSize: 10,
                          //     ),
                          //   ),
                          // ),
                        )
                      ],
                    ));
              },
            ),
          ),
        ),

        //-----------------
        SliverFixedExtentList(
          itemExtent: 30.0,
          delegate: SliverChildListDelegate(
            [
              Container(
                  child: Divider(
                height: 2.0,
                // indent: 100,
                // endIndent: 500,
                color: Colors.black26,
                thickness: 2.0,
              )),
            ],
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ListTile(
                leading: Icon(
                  Icons.history,
                  color: Colors.black45,
                ),
                title: Text("History"),
              ),
              ListTile(
                leading: Icon(
                  Icons.file_download,
                  color: Colors.black45,
                ),
                title: Text("Downlaods"),
                subtitle: Text(
                  "2 videos",
                  style: TextStyle(color: Colors.black38),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.video_library,
                  color: Colors.black45,
                ),
                title: Text("Your videos"),
              ),
              ListTile(
                leading: Icon(
                  Icons.watch_later,
                  color: Colors.black45,
                ),
                title: Text("Watch later"),
                subtitle: Text(
                  "44 watched videos",
                  style: TextStyle(color: Colors.black38),
                ),
              ),
            ]),
          )
        ]))
      ],
    );
  }
}
