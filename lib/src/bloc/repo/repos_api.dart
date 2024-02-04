import 'dart:io';
import 'package:api_bloc_clean/src/model/data/data.dart';
import 'package:http/http.dart'as http;
import 'dart:convert'as convert;
import 'package:http/io_client.dart';



class AuthRepository{



  Future<Data> postLogin(String email,String password)async{
    http.Response response;
    var jsonResponse;

    var url = 'https://reqres.in//auth/login';
    Map<String, dynamic> bodyData = {
      'email': email,
      'password': password,
    };
    try{
      HttpClient client = HttpClient();
      client.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);

      IOClient ioClient = IOClient(client);

      response = await ioClient.post(Uri.parse(url),
          headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          },
          body: convert.jsonEncode(bodyData));

      if(response.statusCode == 200 ){
        jsonResponse = convert.jsonDecode(response.body);
        print(jsonResponse.toString());
      }
    }catch(e){
      print(e.toString());
    }
    return throw Exception('non data');

  }

}