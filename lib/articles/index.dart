import 'package:Ecat/articles/article_data.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class ArticlesInit extends StatefulWidget {
  final _appContext;
  @override
  _ArticlesInitState createState() => _ArticlesInitState();

  const ArticlesInit(this._appContext) : assert(_appContext != null);
  // const Results(this._title) : assert(_title != null);

}

class _ArticlesInitState extends State<ArticlesInit> {
  List<Artical> _articles = articles;
  @override
  Widget build(BuildContext context) {
    return LiquidPullToRefresh(
      child: Container(
        child: ListView(
          children: _articles.map((article) => articleItem(article)).toList(),
        ),
      ),
      onRefresh: () => suffleArticles(_articles),
    );
  }

  Widget articleItem(article) {
    return ExpansionTile(
        title: Container(
            padding: EdgeInsets.all(16),
            child: Text(
              article.title,
              style: TextStyle(fontSize: 24),
            )),
        // subtitle: Text('Hellow'),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Read More '),
              IconButton(
                  icon: Icon(
                    Icons.launch,
                    color: Colors.green,
                  ),
                  onPressed: () {
                    passDetailedArticle(widget._appContext,article);
                    // Navigator.of(widget._appContext).pushNamed('/profile');
                    // print(article.title);
                  })
            ],
          ),
        ]);
  }

  Future suffleArticles(articles) {
    var random = new Random();

    // Go through all elements.
    for (var i = articles.length - 1; i > 0; i--) {
      // Pick a pseudorandom number according to the list length
      var n = random.nextInt(i + 1);

      var temp = articles[i];
      articles[i] = articles[n];
      articles[n] = temp;
    }

    // return articles;
    setState(() {
      _articles = articles;
    });

    return Future.delayed(Duration(seconds: 1));
  }

  passDetailedArticle(context, article) {
    // Navigator.of(context).pushNamed('/profile');
    Navigator.pushNamed(context, '/detailedArticle', arguments: article);
  }
}
