import 'package:flutter/material.dart';
import 'package:news_snack/controller/GetFetchNews.dart';
import 'package:news_snack/model/NewsURLConnection.dart';
import 'package:news_snack/view/widget/NewsContainer.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  bool isLoading = true;

  late NewsConnection newsArt;

  GetNews() async {
    newsArt = await FetchNews.fetchNews();

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value) {
            setState(() {
              isLoading = true;
            });
            GetNews();
          },
          itemBuilder: (context, index) {
            return isLoading ? Center(child: CircularProgressIndicator(),) : NewsContainer(
                imgUrl: newsArt.imgUrl,
                newsCnt: newsArt.newsCnt,
                newsHead: newsArt.newsHead,
                newsDes: newsArt.newsDes,
                newsUrl: newsArt.newsUrl);
          }),
    );
  }
}
