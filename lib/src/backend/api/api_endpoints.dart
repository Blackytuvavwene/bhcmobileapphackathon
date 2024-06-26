import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiEndpoint {
  static String endpoint = dotenv.get('API_URI');
}
