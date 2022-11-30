import 'package:equatable/equatable.dart';
import 'package:rivervod_proyect/src/domain/entities/datum.dart';

class Book extends Equatable {
  const Book({
    required this.code,
    required this.data,
    required this.status,
    required this.total,
  });

  final String status;
  final int code;
  final int total;
  final List<Datum> data;

  @override
  List<Object> get props => [status, code, total, data];
}
