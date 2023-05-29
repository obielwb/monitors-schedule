import 'package:http/http.dart' as http;

class Api {
  static String baseUrl = "http://localhost:3030";

  static Future getMonitors() {
    var url = "$baseUrl/api/monitors";
    return http.get(Uri.parse(url));
  }

  static Future getMonitor(String id) {
    var url = "$baseUrl/api/monitors/$id";
    return http.get(Uri.parse(url));
  }
}
