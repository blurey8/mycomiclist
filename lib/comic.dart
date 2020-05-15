class Comic {
  final String title;
  final String imageURL;

  Comic({this.title, this.imageURL});

  factory Comic.fromJson(Map<String, dynamic> json) {
    return Comic(
      title: json['volume']['name'] + ' #' + json['issue_number'],
      imageURL: json['image']['small_url'],
    );
  }
}
