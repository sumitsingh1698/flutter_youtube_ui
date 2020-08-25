import 'package:flutter/material.dart';
import 'package:video_assis/pages/homepage.dart';

class VideoView extends StatefulWidget {
  final List<Tile> data;
  final int item;
  VideoView(this.item, this.data, {Key key}) : super(key: key);

  @override
  _VideoViewState createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 250),
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("${widget.data[widget.item].title}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ))),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "${widget.data[widget.item].subtitle}",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black38),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.thumb_up,
                                      size: 30,
                                    ),
                                    onPressed: null),
                                Text("4k")
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.thumb_down,
                                      size: 30,
                                    ),
                                    onPressed: null),
                                Text("2k")
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.share,
                                      size: 30,
                                    ),
                                    onPressed: null),
                                Text("share")
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.file_download,
                                      size: 30,
                                    ),
                                    onPressed: null),
                                Text("download")
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.library_add,
                                      size: 30,
                                    ),
                                    onPressed: null),
                                Text("save")
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          color: Colors.black26,
                          height: 2,
                          thickness: 2,
                        ),
                        ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Prime video"),
                              Container(
                                padding: EdgeInsets.only(top: 16),
                                child: Text(
                                  "Subscribe",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          subtitle: Text("7.5M  subscriber"),
                          trailing: Icon(Icons.notifications),
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                              "${widget.data[widget.item].channelurl}",
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black26,
                          height: 2,
                          thickness: 2,
                        ),
                      ],
                    ),
                  );
                }

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                VideoView(index, widget.data)));
                  },
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
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              child: SizedBox(
                width: double.infinity,
                height: 250,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 4.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Image.network(
                    "${widget.data[widget.item].url}",
                    fit: BoxFit.fill,
                  ),
                ),
              )),
        ),
      ],
    ));

    // body: Stack(
    //   children: [
    //     Positioned(
    //       top: 200,
    //       child: Container(
    //         width: double.infinity,
    //         height: double.infinity,
    //         child: CustomScrollView(
    //           slivers: [
    //             // SliverAppBar(
    //             //   stretchTriggerOffset: 2.0,
    //             //   floating: false,
    //             //   pinned: false,
    //             //   onStretchTrigger: () {
    //             //     print("hel");
    //             //     return;
    //             //   },

    //             //   bottom: SizedBox(
    //             //           width: double.infinity,
    //             //           height: 250,
    //             //           child: Container(
    //             //             decoration: BoxDecoration(
    //             //                 border: Border.all(width: 4.0, color: Colors.white),
    //             //                 borderRadius: BorderRadius.circular(20.0)),
    //             //             child: Image.network(
    //             //               "${widget.data[2].url}",
    //             //               fit: BoxFit.fill,
    //             //             ),
    //             //           ),
    //             //         ),
    //             //   expandedHeight: 230,
    //             //   title: Text("helo"),
    //             //   actions: <Widget>[],
    //             //   backgroundColor: Theme.of(context).accentColor,
    //             //   flexibleSpace: FlexibleSpaceBar(
    //             //     background: Column(
    //             //       children: <Widget>[
    //             //         SizedBox(
    //             //           width: double.infinity,
    //             //           height: 250,
    //             //           child: Container(
    //             //             decoration: BoxDecoration(
    //             //                 border: Border.all(width: 4.0, color: Colors.white),
    //             //                 borderRadius: BorderRadius.circular(20.0)),
    //             //             child: Image.network(
    //             //               "${widget.data[2].url}",
    //             //               fit: BoxFit.fill,
    //             //             ),
    //             //           ),
    //             //         )
    //             //       ],
    //             //     ),
    //             //   ),
    //             // ),
    //             SliverToBoxAdapter(
    //               child: Container(
    //                 height: 80.0,
    //                 child: ListView.builder(
    //                   scrollDirection: Axis.horizontal,
    //                   itemCount: widget.data.length,
    //                   itemBuilder: (context, index) {
    //                     return Container(
    //                       padding: EdgeInsets.all(5),
    //                       width: 80.0,
    //                       child: CircleAvatar(
    //                         backgroundImage: NetworkImage(
    //                           "${widget.data[index].channelurl}",
    //                         ),
    //                       ),
    //                     );
    //                   },
    //                 ),
    //               ),
    //             ),

    //             //-----------------
    //             SliverFixedExtentList(
    //               itemExtent: 30.0,
    //               delegate: SliverChildListDelegate(
    //                 [
    //                   Container(
    //                       padding: EdgeInsets.only(left: 20),
    //                       child: Row(
    //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                         children: <Widget>[
    //                           Divider(
    //                             color: Colors.black,
    //                             thickness: 5.0,
    //                           )
    //                         ],
    //                       )),
    //                 ],
    //               ),
    //             ),
    //             SliverList(
    //               delegate: SliverChildListDelegate([
    //                 Container(
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: [
    //                       SizedBox(
    //                         width: double.infinity,
    //                         height: 250,
    //                         child: Container(
    //                           decoration: BoxDecoration(
    //                               border: Border.all(
    //                                   width: 4.0, color: Colors.white),
    //                               borderRadius: BorderRadius.circular(20.0)),
    //                           child: Image.network(
    //                             "${widget.data[2].url}",
    //                             fit: BoxFit.fill,
    //                           ),
    //                         ),
    //                       ),
    //                       ListTile(
    //                         trailing: Container(
    //                           child: Icon(Icons.more_vert),
    //                           padding: EdgeInsets.only(bottom: 20),
    //                         ),
    //                         contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
    //                         leading: CircleAvatar(
    //                           radius: 20,
    //                           backgroundImage: NetworkImage(
    //                             "${widget.data[2].channelurl}",
    //                           ),
    //                         ),
    //                         title: Text(
    //                           "${widget.data[2].title}",
    //                           style: TextStyle(
    //                               color: Colors.black,
    //                               fontSize: 13,
    //                               fontWeight: FontWeight.bold),
    //                         ),
    //                         subtitle: Container(
    //                           padding: EdgeInsets.only(top: 5),
    //                           child: Text(
    //                             "${widget.data[2].subtitle}",
    //                             style: TextStyle(
    //                               color: Colors.black54,
    //                               fontSize: 10,
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: double.infinity,
    //                         height: 250,
    //                         child: Container(
    //                           decoration: BoxDecoration(
    //                               border: Border.all(
    //                                   width: 4.0, color: Colors.white),
    //                               borderRadius: BorderRadius.circular(20.0)),
    //                           child: Image.network(
    //                             "${widget.data[2].url}",
    //                             fit: BoxFit.fill,
    //                           ),
    //                         ),
    //                       ),
    //                       ListTile(
    //                         trailing: Container(
    //                           child: Icon(Icons.more_vert),
    //                           padding: EdgeInsets.only(bottom: 20),
    //                         ),
    //                         contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
    //                         leading: CircleAvatar(
    //                           radius: 20,
    //                           backgroundImage: NetworkImage(
    //                             "${widget.data[2].channelurl}",
    //                           ),
    //                         ),
    //                         title: Text(
    //                           "${widget.data[2].title}",
    //                           style: TextStyle(
    //                               color: Colors.black,
    //                               fontSize: 13,
    //                               fontWeight: FontWeight.bold),
    //                         ),
    //                         subtitle: Container(
    //                           padding: EdgeInsets.only(top: 5),
    //                           child: Text(
    //                             "${widget.data[2].subtitle}",
    //                             style: TextStyle(
    //                               color: Colors.black54,
    //                               fontSize: 10,
    //                             ),
    //                           ),
    //                         ),
    //                       )
    //                     ],
    //                   ),
    //                 )
    //               ]),
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
  }
}
