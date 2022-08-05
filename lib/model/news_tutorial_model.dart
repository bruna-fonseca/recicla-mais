class NewsTutorialModel {
  NewsTutorialModel({
    required this.description,
    required this.imageURL,
    this.title,
  });

  final String description;
  final String imageURL;
  final String? title;
}
