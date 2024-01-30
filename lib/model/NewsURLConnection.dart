class NewsConnection {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  NewsConnection(
      {required this.imgUrl,
      required this.newsCnt,
      required this.newsDes,
      required this.newsHead,
      required this.newsUrl});

 static NewsConnection fromAPItoApp(Map<String, dynamic> article) {
    return NewsConnection(
        imgUrl: article["urlToImage"] ?? "https://img.freepik.com/free-vector/breaking-news-concept_23-2148514216.jpg?w=2000",
        newsCnt: article["content"] ?? "--",
        newsDes: article["description"] ?? "--",
        newsHead: article["title"]  ?? "--",
        newsUrl: article["url"] ?? "https://news.google.com/topstories?hl=en-IN&gl=IN&ceid=IN:en");
  }
}
