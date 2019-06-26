import 'package:flutter/material.dart';

class ListStories extends StatelessWidget {

  final topText = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Text(
        "استوری ها",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: <Widget>[
          new Icon(Icons.play_arrow),
          new Text("مشاهده همه" , style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  );
static var url = "https://rouzegar.com/wp-content/uploads/2017/12/model-Boy-rouzegar-19.jpg";
  final stories = new Expanded(
      child: new Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: new ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 13,
              itemBuilder: (context , index) {
                return new Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image : DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(url)
                          )
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 1.0),
                    ),
                    index == 0
                    ? new CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 10.0 ,
                      child: new Icon(
                        Icons.add,
                        size: 14.0,
                        color: Colors.white,
                      ),
                    )
                    : new Container()
                  ],
                );
              }),
      )
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(

        children: <Widget>[
          topText,
          stories
        ],
      ),
    );
  }

}
