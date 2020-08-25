import 'package:flutter/material.dart';
import 'package:video_assis/pages/homepage.dart';

class Subcription extends StatefulWidget {
  final List<Tile> data;
  Subcription(this.data, {Key key}) : super(key: key);

  @override
  _SubcriptionState createState() => _SubcriptionState();
}

class _SubcriptionState extends State<Subcription> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: 80.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.data.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(5),
                  width: 80.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "${widget.data[index].channelurl}",
                    ),
                  ),
                );
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
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Divider(
                        color: Colors.black,
                        thickness: 5.0,
                      )
                    ],
                  )),
            ],
          ),
        ),
        SliverList(
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
                          border: Border.all(width: 4.0, color: Colors.white),
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
        )
      ],
    );
  }
}
