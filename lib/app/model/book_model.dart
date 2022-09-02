class BookModel{
  
  String? image;
  String? title;
  String? author;
  String? description;

  BookModel({
    this.image,
    this.title,
    this.author,
    this.description,
  });

  BookModel.fronJson(Map<String, dynamic> json) {
    image = json['volumeInfo']['imageLinks'];
    title = json['volumeInfo']['title'];
    author = json['volumeInfo']['authors'];
    description = json['volumeInfo']['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[''] = image;
    data[''] = title;
    data[''] = author;
    data[''] = description;
    return data;
  }
}