import 'package:flutter/material.dart';
import 'package:FlutterProject/classes/comic.dart';

class ComicPage extends StatefulWidget {
  @override
  _ComicPageState createState() => _ComicPageState();
}

class _ComicPageState extends State<ComicPage> {
  int numberMaxComic = 0;
  int numberComic = 0;
  Future<Comic> comic;

  @override
  initState() {
    super.initState();
    this.comic = Comic.fetchLastComic();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Comic>(
      future: this.comic,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Comic c = snapshot.data;
          if (this.numberMaxComic == 0) {
            this.numberMaxComic = c.num;
          }
          this.numberComic = c.num;

          return Scaffold(
              key: Key(c.num.toString()),
              appBar: AppBar(
                title: Text(c.title),
                backgroundColor: Colors.teal,
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                      child: Image(
                        image: NetworkImage(c.img),
                      ),
                      onTap: () {
                        print("${c.title} pressed");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Image.network(c.img)
                                // Scaffold(
                                //       appBar: new AppBar(
                                //         title: new Text(c.title),
                                //       ),
                                //       body: new Center(
                                //         child: Image(image: NetworkImage(c.img)),
                                //       ),
                                //     ),
                                ));
                      }),
                  Row(
                    verticalDirection: VerticalDirection.down,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          "<<",
                          style: TextStyle(fontSize: 25.0),
                        ),
                        onPressed: () {
                          print("-1");
                          int val = this.numberComic - 1;
                          if (val > 0) {
                            this.comic = Comic.fetchComic(val);
                          }
                        },
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 54)),
                      FlatButton(
                        child: Text(
                          ">>",
                          style: TextStyle(fontSize: 25.0),
                        ),
                        onPressed: () {
                          print("+1");
                        },
                      )
                    ],
                  )
                ],
              ));
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        return LinearProgressIndicator();
      },
    );
  }
}
