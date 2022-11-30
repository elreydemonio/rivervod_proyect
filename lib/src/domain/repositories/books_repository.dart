import 'package:dartz/dartz.dart';
import 'package:rivervod_proyect/src/core/errors/failure.dart';
import 'package:rivervod_proyect/src/domain/entities/book.dart';

abstract class BooksRepository {
  Future<Either<Failure, Book>> getRandomBook();
}
