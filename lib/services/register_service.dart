import 'package:dio/dio.dart';


class ApiClient {
  final Dio _dio = Dio();

  //...
  Future<Response> registerUser(Map<String, dynamic>? userData) async {
    try {
      Response response = await _dio.post(
          'https://api.loginradius.com/identity/v2/auth/register',  //ENDPONT URL
          data: userData, //REQUEST BODY
          queryParameters: {'apikey': 'YOUR_API_KEY'},  //QUERY PARAMETERS
          options: Options(headers: {'X-LoginRadius-Sott': 'YOUR_SOTT_KEY', //HEADERS
          }));
      //returns the successful json object
      return response.data;
    } on DioError catch (e) {
      //returns the error object if there is
      return e.response!.data;
    }
  }
}