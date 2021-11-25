import 'api_response_model.dart';

class NetworkingResponse{}

class NetworkingException extends NetworkingResponse{
  String message;
  NetworkingException(this.message);
}

class NetworkingresponseData extends NetworkingResponse{
  APIResponseModel apiResponseModel;
  NetworkingresponseData(this.apiResponseModel);
}


