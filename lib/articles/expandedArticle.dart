import 'package:flutter/material.dart';

class ExpandedArticle extends StatefulWidget {
  final _articleDetails;
  @override
  _ExpandedArticleState createState() => _ExpandedArticleState();

  const ExpandedArticle(this._articleDetails) : assert(_articleDetails != null);
}

class _ExpandedArticleState extends State<ExpandedArticle> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Additional Info",
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // primaryColor: Colors.white,
      ),
      home: Builder(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: Container(
              child: Row(
                children: <Widget>[
                  // close Icon
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => Navigator.pop(context)),
                  ),
                  // Text containg Ecat
                  Container(
                    alignment: Alignment.center,
                    child: Text('Detailed View'),
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                // Text('Hellow everyone'),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                        'https://res.cloudinary.com/dpccmon9r/image/upload/v1594902375/parth_dryk9c.png'),
                  ),
                ),
                Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text("Hello",
                              style: TextStyle(
                                  fontSize: 34, fontWeight: FontWeight.bold)),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.edit,
                            size: 35.0,
                          ),
                          // onPressed: () => _editName(),
                          onPressed: null,
                        ),
                      ]),
                ),
                // phone Number
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Hoo",
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold)),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: 35.0,
                        ),
                        // onPressed: () => _editNumber(),
                        onPressed: null,
                      ),
                    ],
                  )),
                ),

                // Description
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Text("Hahaha",
                            style: TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold)),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: 35.0,
                        ),
                        // onPressed: () => _editDescription(),
                        onPressed: null,
                      ),
                    ],
                  )),
                ),
                // Address
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Text("Hahaha",
                            style: TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold)),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: 35.0,
                        ),
                        // onPressed: () => _editAddress(),
                        onPressed: null,
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),

        // Called when one of the [items] is tapped.
      ),
    );
    // );
  }
}
