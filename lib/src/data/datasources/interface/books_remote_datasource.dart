import 'package:rivervod_proyect/src/data/model/book_model.dart';

abstract class BooksRemoteDataSource {
  Future<BookModel> requestRandomBook();
}
