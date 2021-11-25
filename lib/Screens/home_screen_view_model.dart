import 'package:data_networking/model/api_response_model.dart';
import 'package:data_networking/model/networking_response.dart';
import 'package:data_networking/repo/home_screen_repo.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenViewModel extends ChangeNotifier{
  HomeScreenViewModel(){
    getDataFromAPI();
  }
 late APIResponseModel apiResponseModel;
  String messageToShow = '';

  void getDataFromAPI()async{
    NetworkingResponse networkingResponse = await HomeScreenRepository().getLatestData();
    if(networkingResponse is NetworkingresponseData){
      apiResponseModel = networkingResponse.apiResponseModel;
    }else if(networkingResponse is NetworkingException){
      messageToShow = networkingResponse.message;
    }
    notifyListeners();
  }


}