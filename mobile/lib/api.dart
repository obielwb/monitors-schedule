import 'package:http/http.dart' as http;

const baseUrl = "http://localhost:3030";

class Api {
  static Future getMonitors() {
    const url = "$baseUrl/api/monitors";
    return http.get(Uri.parse(url));
  }

  static Future getMonitor(String id) {
    var url = "$baseUrl/api/monitors/$id";
    return http.get(Uri.parse(url));
  }
}
