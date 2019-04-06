class PhotosList {
  List<Photos> photos;

  PhotosList({this.photos});

  PhotosList.fromJson(Map<String, dynamic> json) {
    if (json[''] != null) {
      photos = new List<Photos>();
      json[''].forEach((v) {
        photos.add(new Photos.fromJson(v));
      });
    }
  } 

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.photos != null) {
      data[''] = this.photos.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Photos {
  String format;
  int width;
  int height;
  String filename;
  int id;
  String author;
  String authorUrl;
  String postUrl;

  Photos(
      {this.format,
      this.width,
      this.height,
      this.filename,
      this.id,
      this.author,
      this.authorUrl,
      this.postUrl});

  Photos.fromJson(Map<String, dynamic> json) {
    format = json['format'];
    width = json['width'];
    height = json['height'];
    filename = json['filename'];
    id = json['id'];
    author = json['author'];
    authorUrl = json['author_url'];
    postUrl = json['post_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['format'] = this.format;
    data['width'] = this.width;
    data['height'] = this.height;
    data['filename'] = this.filename;
    data['id'] = this.id;
    data['author'] = this.author;
    data['author_url'] = this.authorUrl;
    data['post_url'] = this.postUrl;
    return data;
  }
}
