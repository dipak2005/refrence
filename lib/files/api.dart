// for api following points
/*
1 import the libreary for api calling http
2 resolve the all error during the import the http libreary
 - compile sdk version 34
 - multideskenabled true
 - create the singleton  class for api calling
3 crete the static instance for class to call the api instance in whole the program
4- create the base url for all api
5 create the factory custructor
6 create the model_class for featch the data from the api
 */
import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiHelper {
  static ApiHelper obj = ApiHelper._();
  final String _baseurl = "";

  get base => _baseurl;

  ApiHelper._();

  factory ApiHelper() {
    return obj;
  }

//to fetch the data function

  Future getEndpoint(String endpoint) async {
    endpoint = "";
    var data = base + endpoint;
    http.Response status = await http.get(Uri.parse(data));
    if (status.statusCode == 200) {
      //response= classFormJson(status.body);
      //    return response;
    }
    return null;
  }
}

//modelClass weatherFromJson(String str) => modelClass.fromJson(json.decode(str));

//String weatherToJson(modelClass data) => json.encode(data.toJson());


