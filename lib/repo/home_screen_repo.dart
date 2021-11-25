import 'package:data_networking/model/networking_response.dart';
import 'package:data_networking/repo/network_repo.dart';

class HomeScreenRepository{
  Future<NetworkingResponse> getLatestData(){
    return NetworkRepo().gatLatestDataFromApi();
  }
}