import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class UserService {
  get factory => null;

  // recuperer les utilisateurs
  Future getUsers() async {
    Uri url = Uri.parse('https://randomuser.me/api/?results=50');

    http.Response response = await http.get(url);

    List data = jsonDecode(response.body);

    return data.map((e) => User.fromJSON(e)).toList();
  }
}
