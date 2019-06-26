import 'package:flutter/material.dart';
import 'package:flutter_instagram/list_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  static var url = "https://rouzegar.com/wp-content/uploads/2017/12/model-Boy-rouzegar-19.jpg";

  final instaPost = new Column(
    crossAxisAlignment : CrossAxisAlignment.stretch,
    children: <Widget>[
      new Padding(
        padding: const EdgeInsets.fromLTRB(16.0 , 16.0, 8.0, 16.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: 8.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image : new DecorationImage(
                        image: new NetworkImage(url)
                    )
                  ),
                ),
                new Text(
                  "علیرضا رونقگر",
                  style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 16.0),
                )
              ],
            ),
            new IconButton(icon: new Icon(Icons.more_vert), onPressed: null)
          ],
        ),
      ),
      new Row(
        children: <Widget>[
          new Expanded(
              child: Image.network(
                "http://www.ratarose.com/wp-content/uploads/2018/10/A-445-e1546323625477.jpg",
                fit: BoxFit.cover,
              )
          )
        ],
      ),
      new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Row(
              children: <Widget>[
                new GestureDetector(
                  onTap: () { print('pressed'); } ,
                  child: new Icon(FontAwesomeIcons.heart, color: Colors.black),
                ),
                new GestureDetector(
                  onTap: () { print('pressed'); } ,
                  child: new Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: new Icon(FontAwesomeIcons.comment , color: Colors.black) ,
                  ) ,
                ),
                new GestureDetector(
                  onTap: () { print('pressed'); } ,
                  child: new Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: new Icon(FontAwesomeIcons.paperPlane , color: Colors.black),
                  ) ,
                )
              ],
            ),
            new IconButton(icon: new Icon(FontAwesomeIcons.bookmark, color: Colors.black), onPressed: null)
          ],
        ),
      ),
      new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: new Text('رضا و علی و 34,320 نفر دیگر این مطلب را پسندیده اند' ,style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      new Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0 , 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              width: 40.0,
              height: 40.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image : DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          url
                      )
                  )
              ),
              margin: const EdgeInsets.only(left: 5.0 , right: 12.0)
            ),
            new Expanded(
                child: new TextField(
                  decoration: new InputDecoration(
                    border : InputBorder.none,
                    hintText: "افزودن نظر ...",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500)
                  ),
                )
            )
          ],
        ),
      ),
      new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: new Text("3 روز پیش" , style:  TextStyle(color: Colors.grey),)
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(
        itemCount: 5,
        itemBuilder: (context , index) {
          return index == 0
            ? new SizedBox(
                child: new ListStories(),
                height: deviceSize.height * 0.15,
              )
            : instaPost;
        }
    );
  }

}