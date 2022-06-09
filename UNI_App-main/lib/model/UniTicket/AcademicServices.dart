import 'package:html/parser.dart';

import 'package:http/http.dart' as http;

class AcademicServices{

  var serviceAInfo = ['A','0','0'];

  var serviceBInfo = ['B','0','0'];
  var serviceCInfo = ['C','0','0'];

  AcademicServices(){


  }

  String getSecA(){
    return serviceAInfo[1];
  }


  String getSecB(){
    return serviceBInfo[1];
  }


  String getSecC(){
    return serviceCInfo[1];


  }

  String getWaitA(){

    return serviceAInfo[2];
  }


  String getWaitB(){

    return serviceBInfo[2];
  }


  String getWaitC(){

    return serviceCInfo[2];
  }


  List<Object> getServiceAInfo(){
    return serviceAInfo;
  }

  List<Object> getServiceBInfo(){
    return serviceBInfo;
  }

  List<Object> getServiceCInfo(){
    return serviceBInfo;
  }

  Future<void> getHttpInfo() async {
    final response =
        await http.Client().get(Uri.parse("https://web.fe.up.pt/~up201805000/UniTicketSV/"));
        if(response.statusCode == 200) {
          var document = parse(response.body);
          serviceAInfo[1] = (document..getElementById("secA")) as String;
          serviceBInfo[1] = document.getElementById("secB") as String;
          serviceBInfo[1] = document.getElementById("secC") as String;
          serviceAInfo[2] = document.getElementById("waitA") as String;
          serviceBInfo[2] = document.getElementById("waitB") as String;
          serviceBInfo[2] = document.getElementById("waitC") as String;

        }else{

          throw Exception();
        }
  }



  }

  void getHttpB() {
    Future<http.Response> fetchAlbum() {
      return http.get(
          Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    }
  }

  void getHttpC(){
    Future<http.Response> fetchAlbum() {
      return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    }

}