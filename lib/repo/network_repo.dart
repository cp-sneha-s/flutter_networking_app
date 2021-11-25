import 'dart:convert';
import 'package:data_networking/model/api_response_model.dart';
import 'package:data_networking/model/networking_response.dart';
import 'package:http/http.dart' as http;

class NetworkRepo {
  Future<NetworkingResponse> getLatestDataFromApi() async {
    var response =
        await http.get(Uri.parse('https://corona.lmao.ninja/v2/all'));
    if (response.statusCode == 200) {
      var parsedJson = await jsonDecode(response.body);
      print(response.body.toString());
      var apiResponse = APIResponseModel.fromJson(parsedJson);
      return NetworkingresponseData(apiResponse);
    } else {
      throw NetworkingException('failed to load data');
    }
  }
}
