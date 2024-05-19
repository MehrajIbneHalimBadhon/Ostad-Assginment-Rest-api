import 'package:http/http.dart' as http;
import '../model/component.dart';

class GetPhotos {
  Future<List<Photos>?> getPhotos() async {
    try {
      http.Response response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
      if (response.statusCode == 200) {
        String data = response.body;
        return photosFromJson(data);
      } else {
        throw Exception('Failed to fetch photos');
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
