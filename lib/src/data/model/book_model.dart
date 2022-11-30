import 'dart:convert';
import 'package:rivervod_proyect/src/data/model/datum_model.dart';
import 'package:rivervod_proyect/src/domain/entities/book.dart';

BookModel bookFromJson(String str) => BookModel.fromJson(json.decode(str));

String bookToJson(BookModel data) => json.encode(data.toJson());

class BookModel extends Book {
  const BookModel({
    required this.code,
    required this.data,
    required this.status,
    required this.total,
  }) : super(
          code: code,
          data: data,
          status: status,
          total: total,
        );

  final int code;
  final List<DatumModel> data;
  final String status;
  final int total;

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        code: json[_AttributeKeys.code],
        data: List<DatumModel>.from(
          json[_AttributeKeys.data].map(
            (x) => DatumModel.fromJson(
              x,
            ),
          ),
        ),
        status: json[_AttributeKeys.status],
        total: json[_AttributeKeys.total],
      );

  Map<String, dynamic> toJson() => {
        _AttributeKeys.code: code,
        _AttributeKeys.data: List<dynamic>.from(
          data.map(
            (x) => x.toJson(),
          ),
        ),
        _AttributeKeys.status: status,
        _AttributeKeys.total: total,
      };
}

abstract class _AttributeKeys {
  static const String code = 'code';
  static const String data = 'data';
  static const String status = 'status';
  static const String total = 'total';
}
