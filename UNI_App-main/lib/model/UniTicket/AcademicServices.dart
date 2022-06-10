import 'package:flutter/cupertino.dart';
import 'package:html/parser.dart';

import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

class AcademicServices {
  String servAInfo = '';
  String servBInfo = '';
  String servCInfo = '';
  String waitC = '';
  String waitA = '';
  String waitB = '';

  static final AcademicServices _instance = AcademicServices._internal();

  factory AcademicServices() => _instance;

  AcademicServices._internal() {
    this.getHttpInfo();
    this.getHttpInfo();
    this.getHttpInfo();
  }

  String getSecA() {
    return servAInfo;
  }

  String getSecB() {
    return servBInfo;
  }

  String getSecC() {
    return servCInfo;
  }

  String getWaitA() {
    return waitA;
  }

  String getWaitB() {
    return waitB;
  }

  String getWaitC() {
    return waitC;
  }

  Future<void> getHttpInfo() async {
    final url = Uri.parse('https://web.fe.up.pt/~up201805000/UniTicketSV/');
    final response = await http.Client().get(url);
    var document = parse(response.body);
    //print(document);

    if (response.statusCode == 200) {
      //print(document.getElementById("secA").text);

      //print(document.body.text);
      servAInfo = document.getElementById('secA').text;
      //print(this.getSecA() + "here");
      // print(document.getElementById('secB'));
      // print(document.getElementById('secC'));
      // print(document.getElementById('secA'));
      this.servBInfo = document.getElementById('secB').text;
      this.servCInfo = document.getElementById('secC').text;
      this.waitA = document.getElementById('waitA').text;
      this.waitB = document.getElementById('waitB').text;
      this.waitC = document.getElementById('waitC').text;


      //print(this.getWaitB() + "here");
      // print( getSecA());
    } else {
      throw Exception();
    }
  }
}
