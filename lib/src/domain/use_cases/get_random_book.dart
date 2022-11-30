import 'package:dartz/dartz.dart';
import 'package:rivervod_proyect/src/core/errors/failure.dart';
import 'package:rivervod_proyect/src/domain/entities/book.dart';
import 'package:rivervod_proyect/src/domain/repositories/books_repository.dart';

class GetRandomBook {
  final BooksRepository booksRepository;

  GetRandomBook(this.booksRepository);

  Future<Either<Failure, Book>> call() async {
    return booksRepository.getRandomBook();
  }
}
