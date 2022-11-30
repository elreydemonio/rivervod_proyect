import 'package:rivervod_proyect/src/domain/entities/datum.dart';

class DatumModel extends Datum {
  const DatumModel({
    required this.author,
    required this.description,
    required this.genre,
    required this.image,
    required this.isbn,
    required this.published,
    required this.publisher,
    required this.title,
  }) : super(
          author: author,
          title: title,
          description: description,
          genre: genre,
          image: image,
          isbn: isbn,
          published: published,
          publisher: publisher,
        );

  final String author;
  final String description;
  final String genre;
  final String image;
  final String isbn;
  final DateTime published;
  final String publisher;
  final String title;

  factory DatumModel.fromJson(Map<String, dynamic> json) => DatumModel(
        author: json[_AttributeKeys.author],
        description: json[_AttributeKeys.description],
        genre: json[_AttributeKeys.genre],
        image: json[_AttributeKeys.image],
        isbn: json[_AttributeKeys.isbn],
        published: json[_AttributeKeys.published],
        publisher: json[_AttributeKeys.publisher],
        title: json[_AttributeKeys.title],
      );

  Map<String, dynamic> toJson() => {
        _AttributeKeys.author: author,
        _AttributeKeys.description: description,
        _AttributeKeys.genre: genre,
        _AttributeKeys.image: image,
        _AttributeKeys.isbn: isbn,
        _AttributeKeys.published: published,
        _AttributeKeys.publisher: publisher,
        _AttributeKeys.title: title,
      };
}

abstract class _AttributeKeys {
  static const String author = 'author';
  static const String description = 'description';
  static const String genre = 'genre';
  static const String image = 'image';
  static const String isbn = 'isbn';
  static const String published = 'published';
  static const String publisher = 'publisher';
  static const String title = 'title';
}
