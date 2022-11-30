

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frontend/constants.dart';
import 'package:frontend/controllers/page_1_Controller.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../https/Https_Controller.dart';
import '../gridLayout.dart';

class Page_1 extends StatefulWidget {

  Page_1({Key? key, required this.grade}) : super(key: key);
  int grade;

  @override
  State<Page_1> createState() => _Page_1State(grade: grade);
}

class _Page_1State extends State<Page_1> {

  _Page_1State({required this.grade});

  int grade;
  late Page_1_Provider _page_1_provider;
  bool isReady = false;
  bool isAdded = false;
  bool dataChange = false;
  bool isSave = false;
  late App_Http_Controller http_Controller;

  void deleteWidget(int grade, int id){

    setState(() {
      _page_1_provider.deleteData(grade, id);
      isAdded = false;

    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _page_1_provider = Page_1_Provider();
    http_Controller = App_Http_Controller();
    setData();
  }

  Future<void> setData() async {
    await _page_1_provider.loadPage1Data();
    await Future.delayed(const Duration(milliseconds: 1000));
    setState(() {
      isReady = true;
    });
  }

  Future<void> setLayoutState() async {
    setState(() {
      isReady = false;
    });
    await Future.delayed(const Duration(milliseconds: 50));
    setState(() {
      isReady = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(32),
        child: isReady ?
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [

            !dataChange ? makeView(grade) : SizedBox.shrink()

          ],
        ) : Container()
    );
  }

  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

  void _doSomething() async {

    if(isAdded == false){
      _btnController.reset();
      return;
    }

    String string = await http_Controller.Page_1_Http_Insert(
      "1",
      "credit",
      "required",
      "subject",
      "unit",
      "attendance",
      "assignment",
      "middle_term",
      "final_exam"
    );

    
    if(string == "true"){
      justWait(numberOfmilliseconds: 1000);
      await _page_1_provider.loadPage1Data();
    }

    _btnController.success();
    await justWait(numberOfmilliseconds: 1000);
    _btnController.reset();
    setState(() {
      dataChange = true;
    });
    await justWait(numberOfmilliseconds: 200);
    setState(() {
      isAdded = false;
      dataChange = false;
    });
  }

  Widget makeView(int grade) {

    List list = [];
    for(int i = 0; i < _page_1_provider.page1List.length; i++){
      if(_page_1_provider.page1List[i].grade == grade.toString()){
        list.add(_page_1_provider.page1List[i]);
      }
    }

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$grade학년", style: font_medium(20, Colors.black),),

            isAdded ? Container(
              margin: const EdgeInsets.only(right: 36),
              child: RoundedLoadingButton(
                  controller: _btnController,
                  onPressed: _doSomething,
                  color: pointColor,
                  width: 100,
                  height: 40,
                  successColor: primaryColor,
                  loaderSize: 16,
                  loaderStrokeWidth: 1,
                  valueColor: Colors.white,
                  borderRadius: 6,
                  elevation: 6,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 2),
                    child: Text("저 장", style: font_bold(13, Colors.white),),),
              ),
            ) : const SizedBox.shrink()
          ],
        ),
        const SizedBox(height: 8,),

        const GridTop(),

        Column(
          children: list
              .asMap()
              .entries
              .map((e) =>
              GridItem(
                list_index: e.key,
                grade: e.value.grade.toString(),
                id: e.value.id.toString(),
                credit: e.value.credit.toString(),
                required: e.value.required.toString(),
                subject: e.value.subject.toString(),
                unit: e.value.unit.toString(),
                attendance: e.value.unit.toString() == "1" ? "" : e.value
                    .attendance.toString(),
                assignment: e.value.unit.toString() == "1" ? "" : e.value
                    .assignment.toString(),
                middle_term: e.value.unit.toString() == "1" ? "" : e.value
                    .middle_term.toString(),
                final_exam: e.value.unit.toString() == "1" ? "" : e.value
                    .final_exam.toString(),
                deleteWidget: deleteWidget,
                  isSave: isSave,
                  isAdded: isAdded
              )).toList(),
        ),

        const SizedBox(height: 4,),

        !isAdded ? GridBottom(list: _page_1_provider.page1List,) : const SizedBox.shrink(),

        const SizedBox(height: 6,),

        !isAdded ? Card(
          margin: const EdgeInsets.only(left: 0, top: 0, bottom: 0, right: 36),
          borderOnForeground: false,
          shadowColor: primaryColor,
          elevation: 4,
          child: InkWell(
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 34,
              child: const Center(
                child: Icon(
                  Icons.add_circle_outline,
                  size: 24,
                  color: Colors.black45,
                ),
              ),
            ),
            onTap: (){

              if(isAdded == true){
                return;
              }

              setState(() {
                isAdded = true;
                _page_1_provider.addNewData(grade);
                setLayoutState();
              });

            },
          )
        ) : const SizedBox.shrink()


      ],
    );
  }
}