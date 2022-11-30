
import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../https/https_Controller.dart';


class Page_1_Controller{

  final String? id, grade, credit, required, subject,
      unit, attendance, assignment, middle_term, final_exam;

  const Page_1_Controller(
      {this.id,
        this.grade,
        this.credit,
        this.required,
        this.subject,
        this.unit,
        this.attendance,
        this.assignment,
        this.middle_term,
        this.final_exam,
      });

  factory Page_1_Controller.fromJson(Map<String, dynamic> json){
    return Page_1_Controller(
      id: json["id"].toString(),
      grade: json["grade"].toString(),
      credit: json["credit"].toString(),
      required: json["required"].toString(),
      subject: json["subject"].toString(),
      unit: json["unit"].toString(),
      attendance: json["attendance"].toString(),
      assignment: json["assignment"].toString(),
      middle_term: json["middle_term"].toString(),
      final_exam: json["final_exam"].toString()
    );
  }
}

class Page_1_Provider extends ChangeNotifier{
  App_Http_Controller app_http_controller = App_Http_Controller();
  List<Page_1_Controller> _page1 = [];
  List<Page_1_Controller> get page1List => _page1;

  Future<void> loadPage1Data() async {

    clearData();
    List<Page_1_Controller> lists;
    String result = await app_http_controller.Page_1_Http_Select();
    var data = json.decode(result);
    List<dynamic> list = data;
    lists = list.map((e) => Page_1_Controller.fromJson(e)).toList();
    _page1 = lists;
    notifyListeners();
  }
  
  addNewData(int grade) {
    int num = 51754567;
    var string =
    '{"id":"${num}","grade":"${grade}","credit":null,"required":null,"subject":null,"unit":null,"attendance":null,"assignment":null,"middle_term":null,"final_exam":null}';

    _page1.add(Page_1_Controller.fromJson( json.decode(string)));
    notifyListeners();

  }

  deleteData(int grade, int id){

    _page1.removeWhere((item) => (item.grade == '${grade}' && item.id == '${id}'));

    notifyListeners();
  }

  clearData() {
    _page1.clear();
    page1List.clear();
  }

}
