import 'package:rivervod_proyect/src/core/errors/exceptions.dart';
import 'package:rivervod_proyect/src/data/datasources/interface/books_remote_datasource.dart';
import 'package:http/http.dart' as http;
import 'package:rivervod_proyect/src/data/model/book_model.dart';

class BooksRemoteDataSourceImpl implements BooksRemoteDataSource {
  final http.Client client;
  BooksRemoteDataSourceImpl(this.client);

  @override
  Future<BookModel> requestRandomBook() async {
    final url =
        Uri.parse('https://fakerapi.it/api/v1/books?_quantity=1&_locale=es_ES');
    final response = await client.get(url);

    if (response.statusCode == 200) {
      return bookFromJson(response.body);
    } else {
      throw ServerException();
    }
  }
}
