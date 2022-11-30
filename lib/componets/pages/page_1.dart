

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
  int count = 0;
  int grade;
  late Page_1_Provider _page_1_provider;
  bool isReady = false;
  bool isAdded = false;
  bool dataChange = false;
  bool isSave = false;
  late App_Http_Controller http_Controller;

  Future<void> chanageData(bool save, String json, String id, int num) async {
    if(save){
      await _page_1_provider.updateData(int.parse(id), json);
    }

    setState(() {
      count = count + num;

     if(count == 0){
       isSave = false;
     }
     else{
       isSave = true;
     }

    });

  }

  Future<void> deleteWidget(int grade, int id, bool realData) async {

    if(realData){
      await http_Controller.Page_1_Http_Delete(id.toString());
      await Future.delayed(const Duration(milliseconds: 1500));
      setData();
    }
    else{
      _page_1_provider.deleteData(grade, id);
    }

    setState(() {
      isAdded = false;
      setLayoutState();
    });
  }

  Future<void> addWidget() async {
    setState(() {
      isReady = false;
    });
    await _page_1_provider.loadPage1Data();
    setState(() {
      isReady = true;
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
        margin: const EdgeInsets.only(left: 32, right: 8, top: 32, bottom: 32),
        child: isReady ?
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [

            !dataChange ? makeView(grade) : SizedBox.shrink()

          ],
        ) : Container()
    );
  }

  final RoundedLoadingButtonController _btnController1 = RoundedLoadingButtonController();
  final RoundedLoadingButtonController _btnController2 = RoundedLoadingButtonController();
  final RoundedLoadingButtonController _btnController3 = RoundedLoadingButtonController();
  bool isupdateing = false;
  void _doSomething1() async {

    _btnController1.reset();
    _btnController2.reset();
    _btnController3.reset();

    setState(() {
      isSave = true;
    });

  }

  void _doSomething2() async {

    _btnController1.reset();
    _btnController2.reset();
    _btnController3.reset();

    setState(() {
      isSave = false;
    });
  }

  void _doSomething3() async {
    _btnController1.reset();
    _btnController2.reset();
    setState(() {
    isupdateing = false;
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

            // !isSave ? Container(
            //   margin: const EdgeInsets.only(right: 36),
            //   child: RoundedLoadingButton(
            //       controller: _btnController1,
            //       onPressed: _doSomething1,
            //       color: pointColor,
            //       width: 100,
            //       height: 40,
            //       successColor: primaryColor,
            //       loaderSize: 16,
            //       loaderStrokeWidth: 1,
            //       valueColor: Colors.white,
            //       borderRadius: 6,
            //       elevation: 6,
            //       child: Container(
            //         margin: const EdgeInsets.only(bottom: 2),
            //         child: Text("수 정", style: font_bold(13, Colors.white),),),
            //   ),
            // ) : Row(
            //   children: [
            //     !isupdateing ? Container(
            //       margin: const EdgeInsets.only(right: 8),
            //       child: RoundedLoadingButton(
            //         controller: _btnController2,
            //         onPressed: _doSomething2,
            //         color: cancelColor,
            //         width: 100,
            //         height: 40,
            //         successColor: primaryColor,
            //         loaderSize: 16,
            //         loaderStrokeWidth: 1,
            //         valueColor: Colors.white,
            //         borderRadius: 6,
            //         elevation: 6,
            //         child: Container(
            //           margin: const EdgeInsets.only(bottom: 2),
            //           child: Text("취 소", style: font_bold(13, Colors.white),),),
            //       ),
            //     ) : SizedBox.shrink(),
            //     Container(
            //       margin: const EdgeInsets.only(right: 36),
            //       child: RoundedLoadingButton(
            //         controller: _btnController3,
            //         onPressed: _doSomething3,
            //         color: pointColor,
            //         width: 100,
            //         height: 40,
            //         successColor: primaryColor,
            //         loaderSize: 16,
            //         loaderStrokeWidth: 1,
            //         valueColor: Colors.white,
            //         borderRadius: 6,
            //         elevation: 6,
            //         child: Container(
            //           margin: const EdgeInsets.only(bottom: 2),
            //           child: Text("저 장", style: font_bold(13, Colors.white),),),
            //       ),
            //     )
            //   ],
            // )
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
                  isAdded: isAdded,
                  setLayoutState: addWidget,
                  changeWidget : chanageData
              )).toList(),
        ),

        const SizedBox(height: 4,),

        list.length == 0 ? const SizedBox.shrink() : isAdded ? const SizedBox.shrink() : isSave ? const SizedBox.shrink() : GridBottom(list: list,),

        const SizedBox(height: 6,),

        isAdded ? const SizedBox.shrink() : isSave ? const SizedBox.shrink() : Card(
            margin: const EdgeInsets.only(left: 0, top: 0, bottom: 0, right: 60),
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
        )


      ],
    );
  }
}