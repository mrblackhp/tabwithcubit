

import 'package:dio/dio.dart';
import 'package:tab_with_cubit_example/response.dart';

class Repository {
  Dio dio = Dio();
  Response response;

  // ignore: missing_return
  Future<ResponseServer> getFunction(String startDate, String endDate) async {
    try {
      response = await dio
          .post('http://fbcapital.sapp.asia/api//transaction_history/getTransactionBy', data: {
        'userIdRevice': '190e0e2f-0a0d-4356-a369-b51ea34f1bda',
        'startDate': startDate,
        'endDate': endDate,
        'type': 'CHUYEN_TIEN',
      });
      ResponseServer data =
          ResponseServer.fromJson(response.data);
      return data;
    } on DioError catch (e) {
      print(e.toString());
      if (e.type == DioErrorType.RESPONSE) {
        int statusCode = e.response.statusCode;
        if (statusCode == 404) {
          throw Exception("Can't connect to server");
        }
        throw Exception(e.error.message.toString());
      }
      throw Exception(e.error.toString());
    }
  }

   Future<ResponseServer> takeFunction(String startDate, String endDate) async {
    try {
      response = await dio
          .post('http://fbcapital.sapp.asia/api//transaction_history/getTransactionBy', data: {
        'userIdRevice': '190e0e2f-0a0d-4356-a369-b51ea34f1bda',
        'startDate': startDate,
        'endDate': endDate,
        'type': 'RUT_TIEN',
      });
      ResponseServer data =
          ResponseServer.fromJson(response.data);
      return data;
    } on DioError catch (e) {
      print(e.toString());
      if (e.type == DioErrorType.RESPONSE) {
        int statusCode = e.response.statusCode;
        if (statusCode == 404) {
          throw Exception("Can't connect to server");
        }
        throw Exception(e.error.message.toString());
      }
      throw Exception(e.error.toString());
    }
  }
}
