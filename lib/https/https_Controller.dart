
import 'dart:convert';

import 'package:http/http.dart' as http;

String mainServer = "https://inhatc.attustudio.com/api/";

class App_Http_Controller{

  Future<String> Page_1_Http_Select() async {

    String result = "false";
    try {
      final uri = Uri.parse("${mainServer}select_final_result.php");
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        result = utf8.decode(response.bodyBytes);
      }
    }
    catch (e) {
      result = "internet";
    }

    return result;
  }

  Future<String> Page_1_Http_Insert(
      String grade,
      String credit,
      String required,
      String subject,
      String unit,
      String attendance,
      String assignment,
      String middleTerm,
      String finalExam,
      ) async {
    String result = "false";
    try {

      final uri = Uri.parse("${mainServer}insert_final_result.php");
      var response = await http.post(uri,
          body: <String, String> {
            'grade': grade,
            'credit': credit,
            'required': required,
            'subject': subject,
            'unit': unit,
            'attendance': attendance,
            'assignment': assignment,
            'middle_term': middleTerm,
            'final_exam': finalExam,
          });
      if (response.statusCode == 200) {
        result = response.body.toString();
      }
    }
    catch (e) {
      result = "internet";
      print(e);
    }

    return result;
  }

  Future<String> Page_1_Http_Delete(
      String id,
      ) async {
    String result = "false";
    try {

      final uri = Uri.parse("${mainServer}delete_final_result.php");
      var response = await http.post(uri,
          body: <String, String> {
            'id': id,
          });
      if (response.statusCode == 200) {
        result = response.body.toString();
      }
    }
    catch (e) {
      result = "internet";
      print(e);
    }

    return result;
  }

  Future<String> Page_1_Http_Update(
      String id,
      String grade,
      String credit,
      String required,
      String subject,
      String unit,
      String attendance,
      String assignment,
      String middleTerm,
      String finalExam,
      ) async {
    String result = "false";
    try {

      final uri = Uri.parse("${mainServer}update_final_result.php");
      var response = await http.post(uri,
          body: <String, String> {
            'id': id,
            'grade': grade,
            'credit': credit,
            'required': required,
            'subject': subject,
            'unit': unit,
            'attendance': attendance,
            'assignment': assignment,
            'middle_term': middleTerm,
            'final_exam': finalExam,
          });
      if (response.statusCode == 200) {
        result = response.body.toString();
      }
    }
    catch (e) {
      result = "internet";
      print(e);
    }

    return result;
  }

}