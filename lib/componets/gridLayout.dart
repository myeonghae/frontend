

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:frontend/componets/pages/page_1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../constants.dart';
import '../https/Https_Controller.dart';

class GridTop extends StatefulWidget {
  const GridTop({Key? key}) : super(key: key);

  @override
  State<GridTop> createState() => _GridTopState();
}

class _GridTopState extends State<GridTop> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 1,
          child: Container(
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text("이수", style: font_bold(14, Colors.black),),)
          ),
        ),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text("필수", style: font_bold(14, Colors.black),),)
          ),
        ),

        Expanded(
          flex: 2,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text("과목명", style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text("학점", style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text("출석점수", style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text("과제점수", style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text("중간고사", style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text("기말고사", style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text("총점", style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text("평점", style: font_bold(14, Colors.black),),
              )
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text("성적", style: font_bold(14, Colors.black),),
              )
          ),),
    const SizedBox(
    width: 60,)
      ],
    );
  }
}


class GridItem extends StatefulWidget {
  GridItem({Key? key,
    required this.list_index,
    required this.grade,
    required this.id,
    required this.credit,
    required this.required,
    required this.subject,
    required this.unit,
    required this.attendance,
    required this.assignment,
    required this.middle_term,
    required this.final_exam,
    required this.deleteWidget,
    required this.isSave,
    required this.isAdded,
    required this.setLayoutState,
    required this.changeWidget
  }) : super(key: key);

  int list_index;
  String grade;
  String id;
  String credit;
  String required;
  String subject;
  String unit;
  String attendance;
  String assignment;
  String middle_term;
  String final_exam;
  bool isSave;
  bool isAdded;
  var deleteWidget;
  var setLayoutState;
  var changeWidget;

  @override
  State<GridItem> createState() => _GridItemState(
    list_index: list_index,
    grade: grade,
    id: id,
    credit: credit,
    required: required,
    subject: subject,
    unit: unit,
    attendance: attendance,
    assignment: assignment,
    middle_term: middle_term,
    final_exam: final_exam,
      deleteWidget : deleteWidget,
      isSave: isSave,
      isAdded: isAdded,
      setLayoutState:setLayoutState,
      changeWidget:changeWidget
  );
}

class _GridItemState extends State<GridItem> {

  _GridItemState({
    required this.list_index,
    required this.grade,
    required this.id,
    required this.credit,
    required this.required,
    required this.subject,
    required this.unit,
    required this.attendance,
    required this.assignment,
    required this.middle_term,
    required this.final_exam,
    required this.deleteWidget,
    required this.isSave,
    required this.isAdded,
    required this.setLayoutState,
    required this.changeWidget
  });

  int list_index;
  String grade;
  String id;
  String credit;
  String required;
  String subject;
  String unit;
  String attendance;
  String assignment;
  String middle_term;
  String final_exam;
  bool isSave;
  bool isAdded;

  Color _color = Colors.black;
  String tolal_score = "";
  String result = "";
  bool isOneUnit = false;

  var deleteWidget;
  var setLayoutState;
  var changeWidget;

  final subjectController = TextEditingController();
  final unitController = TextEditingController();
  final attendanceController = TextEditingController();
  final assignmentController = TextEditingController();
  final middle_termController = TextEditingController();
  final final_examController = TextEditingController();

  final subjecFocuse = FocusNode();
  final unitFocuse = FocusNode();
  final attendanceFocuse = FocusNode();
  final assignmentFocuse = FocusNode();
  final middle_termFocuse = FocusNode();
  final final_examFocuse = FocusNode();
  late App_Http_Controller http_Controller;
  double bottomWidth = 0;

  void setDataasdasd(){
    if(unit == "1"){
      isOneUnit = true;
    }
    else{
      isOneUnit = false;
    }

    if ((list_index+1) % 2 == 0) {
      _color = thirdColor;
    } else {
      _color = secondaryColor;
    }

    try{
      if(isOneUnit){
        result = "N";
      }
      else if(credit == "null" || credit == null ||
          required == "null" || required == null ||
          subject == "null" || subject == null ||
          unit == "null" || unit == null ||
          attendance == "null" || attendance == null ||
          assignment == "null" || assignment == null ||
          middle_term == "null" || middle_term == null ||
          final_exam == "" || final_exam == null){

        result = "";
        credit = "-";
        required = "-";
        subject = "";
        unit = "";
        attendance = "";
        assignment = "";
        middle_term = "";
        final_exam = "";
      }
      else{
        tolal_score = (int.parse(attendance) + int.parse(assignment) + int.parse(middle_term) + int.parse(final_exam)).toString();
        if(int.parse(tolal_score) > 95){
          result = "A+";
        }
        else if(int.parse(tolal_score) >= 90){
          result = "A0";
        }
        else if(int.parse(tolal_score) >= 85){
          result = "B+";
        }
        else if(int.parse(tolal_score) >= 80){
          result = "B0";
        }
        else if(int.parse(tolal_score) >= 75){
          result = "C+";
        }
        else if(int.parse(tolal_score) >= 70){
          result = "C0";
        }
        else if(int.parse(tolal_score) >= 65){
          result = "D+";
        }
        else if(int.parse(tolal_score) >= 60){
          result = "D0";
        }
        else{
          result = "F";
        }
      }

    }catch(e){
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setDataasdasd();

      subjectController.text = subject;
      unitController.text = unit;
      attendanceController.text = attendance;
      assignmentController.text = assignment;
      middle_termController.text = middle_term;
      final_examController.text = final_exam;


  }

  bool return1 = false;
  bool return2 = false;
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();
  final RoundedLoadingButtonController _btnController2 = RoundedLoadingButtonController();
  List backUpdata = ["" ,"" ,"" ,"","" ,"" ,"" ,""];

  void _doSomething() async {

    if(credit == "-"){
      setState(() {
        return1 = true;
      });
      _btnController.reset();
      return;
    }
    else if(required == "-"){
      setState(() {
        return2 = true;
      });
      _btnController.reset();
      return;
    }
    else if(subjectController.text.length < 2){
      subjecFocuse.requestFocus();
      _btnController.reset();
      return;
    }
    else if(unitController.text == "1"){
      setState(() {
        attendanceController.text = "";
        assignmentController.text = "";
        middle_termController.text = "";
        final_examController.text = "";
        tolal_score = "";
      });
    }
    else if(unitController.text.isEmpty){
      unitFocuse.requestFocus();
      _btnController.reset();
      return;
    }
    else if(attendanceController.text.isEmpty){
      attendanceFocuse.requestFocus();
      _btnController.reset();
      return;
    }
    else if(assignmentController.text.isEmpty){
      assignmentFocuse.requestFocus();
      _btnController.reset();
      return;
    }
    else if(middle_termController.text.isEmpty){
      middle_termFocuse.requestFocus();
      _btnController.reset();
      return;
    }
    else if(final_examController.text.isEmpty){
      final_examFocuse.requestFocus();
      _btnController.reset();
      return;
    }


    http_Controller = App_Http_Controller();
    String string = await http_Controller.Page_1_Http_Insert(
        grade,
        credit,
        required,
        subjectController.text,
        unitController.text,
        attendanceController.text,
        assignmentController.text,
        middle_termController.text,
        final_examController.text
    );


    if(string == "true"){
      await justWait(numberOfmilliseconds: 1200);
      _btnController.success();
      await justWait(numberOfmilliseconds: 1200);
      _btnController.reset();
      await justWait(numberOfmilliseconds: 500);
      setLayoutState();
    }
    else if(string == "internet"){
      _btnController.reset();
    }
    else{
      _btnController.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    bottomWidth = (MediaQuery.of(context).size.width > 1600 ? 1600 : MediaQuery.of(context).size.width < 980 ? 980 : MediaQuery.of(context).size.width);
    return (isAdded && int.parse(id)==51754567) ?
    Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 4),
          height: 34 ,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [

              !isAdded ?  Expanded(
                flex: 1,
                child: Container(
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(credit, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),
              ) : (int.parse(id)==51754567) ?
              Expanded(
                flex: 1,
                child:
                Container(
                  color: _color,

                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          _createOverlay();
                          return1 = false;
                        },
                        child:
                        CompositedTransformTarget(
                          link: _layerLink,
                          child: Container(
                              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                              child: Stack(
                                children: [

                                  Align(
                                    alignment: Alignment.center,
                                    child: AutoSizeText(credit, style: font_bold(14, return1 ? Colors.red : Colors.black),overflow: TextOverflow.ellipsis,),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(top: 2, right: 2),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.arrow_downward,
                                        color: return1 ? Colors.red : Colors.black,
                                        size: 12,
                                      ),
                                    ),
                                  )


                                  // 아이콘.

                                ],
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),) :
              Expanded(
                flex: 1,
                child: Container(
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(credit, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),
              ),

              !isAdded ?  Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(required, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),
              ) : (int.parse(id)==51754567) ?
              credit == "전공" ? Expanded(
                flex: 1,
                child:
                Container(
                  margin: const EdgeInsets.only(left: 4),
                  color: _color,
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          _createOverlay2();
                          return2 = false;
                        },
                        child:
                        CompositedTransformTarget(
                          link: _layerLink2,
                          child: Container(
                              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                              child: Stack(
                                children: [

                                  Align(
                                    alignment: Alignment.center,
                                    child: AutoSizeText(required, style: font_bold(14, return2 ? Colors.red : Colors.black),overflow: TextOverflow.ellipsis,),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(top: 2, right: 2),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.arrow_downward,
                                        color: return2 ? Colors.red : Colors.black,
                                        size: 12,
                                      ),
                                    ),
                                  )


                                  // 아이콘.

                                ],
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),) :
              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(required, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),
              ) :
              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(required, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),
              ),

              !isAdded ? Expanded(
                flex: 2,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: AutoSizeText(
                      subject,
                      style: font_bold(14, Colors.black),
                      overflow: TextOverflow.ellipsis,
                    )
                ),) : (int.parse(id)==51754567) ?
              Expanded(
                flex: 2,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 9, right: 8, top: 0, bottom: 8),
                    child: Center(
                      child: TextField(
                          inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(10),
                          ],
                          focusNode: subjecFocuse,
                          controller: subjectController,
                          style: font_bold(14, Colors.black),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          maxLength: 10,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            counterText:'',
                          ),
                          onChanged: (value) {
                            String result = value;
                            // Here replace 4 by your maxLength value
                            if (result.length > 10) {
                              result = result.substring(0, 10);
                            }
                            subjectController.text = result;
                            subjectController.selection = TextSelection.fromPosition(
                              TextPosition(offset: result.length),
                            );
                            setDataTotal();
                          },
                      ),
                    )
                ),) :
              Expanded(
                flex: 2,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: AutoSizeText(
                      subject,
                      style: font_bold(14, Colors.black),
                      overflow: TextOverflow.ellipsis,
                    )
                ),),

              !isAdded ?   Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(unit, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),) : (int.parse(id)==51754567) ?
              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 10, right: 7, top: 0, bottom: 8),
                    child: Center(
                      child: TextField(
                          focusNode: unitFocuse,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          controller: unitController,
                          style: font_bold(14, Colors.black),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            counterText:'',
                          ),
                          maxLength: 1,
                          maxLines: 1,
                          onChanged: (value) {
                            String result = value;
                            // Here replace 4 by your maxLength value
                            if (result.length > 1) {
                              result = result.substring(0, 1);
                            }
                            unitController.text = result;
                            unitController.selection = TextSelection.fromPosition(
                              TextPosition(offset: result.length),
                            );
                            setDataTotal();
                          }
                      ),
                    )
                ),) :
              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(unit, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),),

              !isAdded ?    Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(attendance, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),) : (int.parse(id)==51754567) ?
              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 10, right: 7, top: 0, bottom: 8),
                    child: Center(
                      child: TextField(
                          focusNode: attendanceFocuse,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(2),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          controller: attendanceController,
                          style: font_bold(14, Colors.black),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            counterText:'',
                          ),
                          maxLength: 2,
                          maxLines: 1,
                          onChanged: (value) {
                            String result = value;
                            // Here replace 4 by your maxLength value
                            if (result.length > 2) {
                              result = result.substring(0, 2);
                            }
                            attendanceController.text = result;
                            attendanceController.selection = TextSelection.fromPosition(
                              TextPosition(offset: result.length),
                            );
                            setDataTotal();
                          }
                      ),
                    )
                ),) :
              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(attendance, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),),

              !isAdded ?    Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                        child: AutoSizeText(
                          assignment,
                          style: font_bold(14, Colors.black),
                          overflow: TextOverflow.ellipsis,
                        )),)
              ) : (int.parse(id)==51754567) ?
              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 10, right: 7, top: 0, bottom: 8),
                    child: Center(
                      child: TextField(
                          focusNode: assignmentFocuse,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(2),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          controller: assignmentController,
                          style: font_bold(14, Colors.black),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            counterText:'',
                          ),
                          maxLength: 2,
                          maxLines: 1,
                          onChanged: (value) {
                            String result = value;
                            // Here replace 4 by your maxLength value
                            if (result.length > 2) {
                              result = result.substring(0, 2);
                            }
                            assignmentController.text = result;
                            assignmentController.selection = TextSelection.fromPosition(
                              TextPosition(offset: result.length),
                            );
                            setDataTotal();
                          }
                      ),
                    )
                ),) :
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                        child: AutoSizeText(
                          assignment,
                          style: font_bold(14, Colors.black),
                          overflow: TextOverflow.ellipsis,
                        )),)
              ),

              !isAdded ?    Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(middle_term, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),) : (int.parse(id)==51754567) ?
              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 10, right: 7, top: 0, bottom: 8),
                    child: Center(
                      child: TextField(
                          focusNode: middle_termFocuse,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(2),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          controller: middle_termController,
                          style: font_bold(14, Colors.black),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            counterText:'',
                          ),
                          maxLength: 2,
                          maxLines: 1,
                          onChanged: (value) {
                            String result = value;
                            // Here replace 4 by your maxLength value
                            if (result.length > 2) {
                              result = result.substring(0, 2);
                            }
                            middle_termController.text = result;
                            middle_termController.selection = TextSelection.fromPosition(
                              TextPosition(offset: result.length),
                            );
                            setDataTotal();
                          }
                      ),
                    )
                ),) :
              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(middle_term, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),),

              !isAdded ?     Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(final_exam, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),) : (int.parse(id)==51754567) ?
              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 10, right: 7, top: 0, bottom: 8),
                    child: Center(
                      child: TextField(
                          focusNode: final_examFocuse,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(2),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          controller: final_examController,
                          style: font_bold(14, Colors.black),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            counterText:'',
                          ),
                          maxLength: 2,
                          maxLines: 1,
                          onChanged: (value) {
                            String result = value;
                            // Here replace 4 by your maxLength value
                            if (result.length > 2) {
                              result = result.substring(0, 2);
                            }
                            final_examController.text = result;
                            final_examController.selection = TextSelection.fromPosition(
                              TextPosition(offset: result.length),
                            );
                            setDataTotal();
                          }
                      ),
                    )
                ),) :
              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(final_exam, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),),

              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(tolal_score, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
                ),),

              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText("", style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),
                    )
                ),),

              Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    color: _color,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                    child: Center(
                      child: AutoSizeText(result, style: font_bold(14, result != "F" ? Colors.black : Colors.red),overflow: TextOverflow.ellipsis,),
                    )
                ),),

              const SizedBox(width: 60,)


            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 430,
                margin: const EdgeInsets.only(right: 0, top: 4),
                child: RoundedLoadingButton(
                  controller: _btnController,
                  onPressed: _doSomething,
                  color: primaryColor,
                  width: 430,
                  height:  40,
                  successColor: secondaryColor,
                  loaderSize: 16,
                  loaderStrokeWidth: 1,
                  valueColor: Colors.white,
                  borderRadius: 6,
                  elevation: 6,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 2),
                    child: Text("저 장", style: font_bold(13, Colors.white),),),
                ),
              ),
              Container(
                width: 430,
                margin: const EdgeInsets.only(right: 0, top: 4),
                child: RoundedLoadingButton(
                  controller: _btnController2,
                  onPressed: (){
                    setState(() {
                      deleteWidget(int.parse(grade), int.parse(id), false);
                    });
                  },
                  color: secondaryColor,
                  width: 430,
                  height:  40,
                  successColor: primaryColor,
                  loaderSize: 16,
                  loaderStrokeWidth: 1,
                  valueColor: Colors.white,
                  borderRadius: 6,
                  elevation: 6,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 2),
                    child: Text("취 소", style: font_bold(13, Colors.white),),),
                ),
              )
            ],
          ),
        )
      ]):
     !dataDeleting ? Container(
      margin: const EdgeInsets.only(top: 4),
      height: 34 ,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          isChanged ? Expanded(
            flex: 1,
            child:
            Container(
              color: _color,
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      _createOverlay();
                      return1 = false;
                    },
                    child:
                    CompositedTransformTarget(
                      link: _layerLink,
                      child: Container(
                          padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment.center,
                                child: AutoSizeText(credit, style: font_bold(14, return1 ? Colors.red : Colors.black),overflow: TextOverflow.ellipsis,),
                              ),

                              Container(
                                margin: const EdgeInsets.only(top: 2, right: 2),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.arrow_downward,
                                    color: return1 ? Colors.red : Colors.black,
                                    size: 12,
                                  ),
                                ),
                              )


                              // 아이콘.

                            ],
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),) :
          Expanded(
            flex: 1,
            child: Container(
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: Center(
                  child: AutoSizeText(credit, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
            ),
          ),

          isChanged ?
          credit == "전공" ? Expanded(
            flex: 1,
            child:
            Container(
              margin: const EdgeInsets.only(left: 4),
              color: _color,
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      _createOverlay2();
                      return2 = false;
                    },
                    child:
                    CompositedTransformTarget(
                      link: _layerLink2,
                      child: Container(
                          padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment.center,
                                child: AutoSizeText(required, style: font_bold(14, return2 ? Colors.red : Colors.black),overflow: TextOverflow.ellipsis,),
                              ),

                              Container(
                                margin: const EdgeInsets.only(top: 2, right: 2),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.arrow_downward,
                                    color: return2 ? Colors.red : Colors.black,
                                    size: 12,
                                  ),
                                ),
                              )


                              // 아이콘.

                            ],
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),) :
          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: Center(
                  child: AutoSizeText(required, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
            ),
          ) :  Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: Center(
                  child: AutoSizeText(required, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
            ),
          ),


          isChanged ?
          Expanded(
            flex: 2,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 0, bottom: 8),
                child: Center(
                  child: TextField(
                    inputFormatters: <TextInputFormatter>[
                      LengthLimitingTextInputFormatter(10),
                    ],
                    focusNode: subjecFocuse,
                    controller: subjectController,
                    style: font_bold(14, Colors.black),
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    maxLength: 10,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      counterText:'',
                    ),
                    onChanged: (value) {
                      String result = value;
                      // Here replace 4 by your maxLength value
                      if (result.length > 10) {
                        result = result.substring(0, 10);
                      }
                      subjectController.text = result;
                      subjectController.selection = TextSelection.fromPosition(
                        TextPosition(offset: result.length),
                      );
                      setDataTotal();
                    },
                  ),
                )
            ),) :
          Expanded(
            flex: 2,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: AutoSizeText(
                  subject,
                  style: font_bold(14, Colors.black),
                  overflow: TextOverflow.ellipsis,
                )
            ),),

          isChanged ?
          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 10, right: 7, top: 0, bottom: 8),
                child: Center(
                  child: TextField(
                      focusNode: unitFocuse,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: unitController,
                      style: font_bold(14, Colors.black),
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText:'',
                      ),
                      maxLength: 1,
                      maxLines: 1,
                      onChanged: (value) {
                        String result = value;
                        // Here replace 4 by your maxLength value
                        if (result.length > 1) {
                          result = result.substring(0, 1);
                        }
                        unitController.text = result;
                        unitController.selection = TextSelection.fromPosition(
                          TextPosition(offset: result.length),
                        );
                        setDataTotal();
                      }
                  ),
                )
            ),) :
          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: Center(
                  child: AutoSizeText(unit, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
            ),),

          isChanged ?
          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 10, right: 7, top: 0, bottom: 8),
                child: Center(
                  child: TextField(
                      focusNode: attendanceFocuse,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(2),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: attendanceController,
                      style: font_bold(14, Colors.black),
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText:'',
                      ),
                      maxLength: 2,
                      maxLines: 1,
                      onChanged: (value) {
                        String result = value;
                        // Here replace 4 by your maxLength value
                        if (result.length > 2) {
                          result = result.substring(0, 2);
                        }
                        attendanceController.text = result;
                        attendanceController.selection = TextSelection.fromPosition(
                          TextPosition(offset: result.length),
                        );
                        setDataTotal();
                      }
                  ),
                )
            ),) :
          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: Center(
                  child: AutoSizeText(attendance, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
            ),),

          isChanged ?
          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 10, right: 7, top: 0, bottom: 8),
                child: Center(
                  child: TextField(
                      focusNode: assignmentFocuse,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(2),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: assignmentController,
                      style: font_bold(14, Colors.black),
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText:'',
                      ),
                      maxLength: 2,
                      maxLines: 1,
                      onChanged: (value) {
                        String result = value;
                        // Here replace 4 by your maxLength value
                        if (result.length > 2) {
                          result = result.substring(0, 2);
                        }
                        assignmentController.text = result;
                        assignmentController.selection = TextSelection.fromPosition(
                          TextPosition(offset: result.length),
                        );
                        setDataTotal();
                      }
                  ),
                )
            ),) :
          Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: Center(
                    child: AutoSizeText(
                      assignment,
                      style: font_bold(14, Colors.black),
                      overflow: TextOverflow.ellipsis,
                    )),)
          ),

          isChanged ?
          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 10, right: 7, top: 0, bottom: 8),
                child: Center(
                  child: TextField(
                      focusNode: middle_termFocuse,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(2),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: middle_termController,
                      style: font_bold(14, Colors.black),
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText:'',
                      ),
                      maxLength: 2,
                      maxLines: 1,
                      onChanged: (value) {
                        String result = value;
                        // Here replace 4 by your maxLength value
                        if (result.length > 2) {
                          result = result.substring(0, 2);
                        }
                        middle_termController.text = result;
                        middle_termController.selection = TextSelection.fromPosition(
                          TextPosition(offset: result.length),
                        );
                        setDataTotal();
                      }
                  ),
                )
            ),) :
          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: Center(
                  child: AutoSizeText(middle_term, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
            ),),

          isChanged ?
          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 10, right: 7, top: 0, bottom: 8),
                child: Center(
                  child: TextField(
                      focusNode: final_examFocuse,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(2),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: final_examController,
                      style: font_bold(14, Colors.black),
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText:'',
                      ),
                      maxLength: 2,
                      maxLines: 1,
                      onChanged: (value) {
                        String result = value;
                        // Here replace 4 by your maxLength value
                        if (result.length > 2) {
                          result = result.substring(0, 2);
                        }
                        final_examController.text = result;
                        final_examController.selection = TextSelection.fromPosition(
                          TextPosition(offset: result.length),
                        );
                        setDataTotal();
                      }
                  ),
                )
            ),) :
          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: Center(
                  child: AutoSizeText(final_exam, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
            ),),

          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: Center(
                  child: AutoSizeText(tolal_score, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
            ),),

          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: Center(
                  child: AutoSizeText("", style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),
                )
            ),),

          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 4),
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: Center(
                  child: AutoSizeText(result, style: font_bold(14, result != "F" ? Colors.black : Colors.red),overflow: TextOverflow.ellipsis,),
                )
            ),),

          !isAdded ? isChanged ?
          Container(
              width: 56,
              margin: const EdgeInsets.only(left: 4),
              height: double.infinity,
              color: Colors.transparent,
              child: Center(
                  child: Row(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(25),
                        child: Text("취소", style: font_medium(11, Colors.black)),
                        onTap: (){
                          print("취소");
                          setState(() {
                            isChanged = false;
                            credit = backUpdata[0];
                            required = backUpdata[1];
                            subjectController.text = backUpdata[2];
                            unitController.text = backUpdata[3];
                            attendanceController.text = backUpdata[4];
                            assignmentController.text = backUpdata[5];
                            middle_termController.text = backUpdata[6];
                            final_examController.text = backUpdata[7];
                            changeWidget(false, "", "", -1);
                          });
                        },
                      ),

                      Text(" | ", style: font_medium(8, Colors.black)),

                      InkWell(
                        borderRadius: BorderRadius.circular(25),
                        child: Text("저장", style: font_medium(11, Colors.red)),
                        onTap: (){
                          updateUserData();
                        },
                      )
                    ],
                  )

              )
          ) :
          Container(
              width: 56,
              margin: const EdgeInsets.only(left: 4),
              height: double.infinity,
              color: Colors.transparent,
              child: Center(
                  child: Row(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(25),
                        child: Text("수정", style: font_medium(11, Colors.black)),
                        onTap: (){

                          setState(() {

                            isChanged = true;
                            backUpdata[0] = credit;
                            backUpdata[1] = required;
                            backUpdata[2] = subject;
                            backUpdata[3] = unit;
                            backUpdata[4] = attendance;
                            backUpdata[5] = assignment;
                            backUpdata[6] = middle_term;
                            backUpdata[7] = final_exam;
                            changeWidget(false, "", "", 1);
                          });

                        },
                      ),

                      Text(" | ", style: font_medium(8, Colors.black)),

                      InkWell(
                        borderRadius: BorderRadius.circular(25),
                        child: Text("삭제", style: font_medium(11, Colors.red)),
                        onTap: (){

                          setState(() {
                            _showDioalog(context);
                          });

                        },
                      )
                    ],
                  )

              )
          ) : const SizedBox(width: 60,),
        ],
      ),
    ) :
    Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5, right: 56),
      height: 24,
      width: 24,
      child: const CircularProgressIndicator(
        strokeWidth: 3,
        color: Colors.black,
      ),
    );
  }

  Future<void> updateUserData() async {

    if(credit == "-"){
      setState(() {
        return1 = true;
      });
      return;
    }
    else if(required == "-"){
      setState(() {
        return2 = true;
      });
      return;
    }
    else if(subjectController.text.length < 2){
      subjecFocuse.requestFocus();
      return;
    }
    else if(unitController.text == "1"){
      setState(() {
        attendanceController.text = "";
        assignmentController.text = "";
        middle_termController.text = "";
        final_examController.text = "";
        tolal_score = "";
      });
    }
    else if(unitController.text.isEmpty){
      unitFocuse.requestFocus();
      return;
    }
    else if(attendanceController.text.isEmpty){
      attendanceFocuse.requestFocus();
      return;
    }
    else if(assignmentController.text.isEmpty){
      assignmentFocuse.requestFocus();
      return;
    }
    else if(middle_termController.text.isEmpty){
      middle_termFocuse.requestFocus();
      return;
    }
    else if(final_examController.text.isEmpty){
      final_examFocuse.requestFocus();
      return;
    }

    if(
    backUpdata[0] == credit &&
    backUpdata[1] == required &&
    backUpdata[2] == subjectController.text &&
    backUpdata[3] == unitController.text &&
    backUpdata[4] == attendanceController.text &&
    backUpdata[5] == assignmentController.text &&
    backUpdata[6] == middle_termController.text &&
    backUpdata[7] == final_examController.text
    ){
      changeWidget(false, "", "id" , -1);

      setState((){
        isChanged = false;
      });
      return;
    }

    http_Controller = App_Http_Controller();
    await http_Controller.Page_1_Http_Update(
        id,
        grade,
        credit,
        required,
        subjectController.text,
        unitController.text,
        attendanceController.text,
        assignmentController.text,
        middle_termController.text,
        final_examController.text
    );

    subject = subjectController.text;
    unit = unitController.text;
    attendance = attendanceController.text ;
    assignment = assignmentController.text ;
    middle_term = middle_termController.text;
    final_exam = final_examController.text ;
    setDataasdasd();

    setState((){
      isChanged = false;
    });

    var string =
        '{"id":"${id}",'
        '"grade":"${grade}",'
        '"credit":"${credit}",'
        '"required":"${required}",'
        '"subject":"${subject}",'
        '"unit":"${unit}",'
        '"attendance":"${attendance}",'
        '"assignment":"${assignment}",'
        '"middle_term":"${middle_term}",'
        '"final_exam":"${final_exam}"}';


    changeWidget(true, string, id , -1);
  }

  bool isChanged = false;

  void setDataTotal(){
    if(credit == "-"){
      setState(() {
        tolal_score = "";
      });
      return;
    }
    else if(required == "-"){
      setState(() {
        tolal_score = "";
      });
      return;
    }
    else if(subjectController.text.length < 2){
      setState(() {
        tolal_score = "";
      });
      return;
    }
    else if(unitController.text == "1"){
      setState(() {
        attendanceController.text = "";
        assignmentController.text = "";
        middle_termController.text = "";
        final_examController.text = "";
        tolal_score = "";
        return;
      });
    }
    else if(unitController.text.isEmpty){
      setState(() {
        tolal_score = "";
      });
      return;
    }
    else if(unitController.text.isEmpty){
      setState(() {
        tolal_score = "";
      });
      return;
    }
    else if(attendanceController.text.isEmpty){
      setState(() {
        tolal_score = "";
      });
      return;
    }
    else if(assignmentController.text.isEmpty){
      setState(() {
        tolal_score = "";
      });
      return;
    }
    else if(middle_termController.text.isEmpty){
      setState(() {
        tolal_score = "";
      });
      return;
    }
    else if(final_examController.text.isEmpty){
      setState(() {
        tolal_score = "";
      });
      return;
    }
    else{
      setState(() {
        try{
          tolal_score = (
              int.parse(attendanceController.text)
                  +int.parse(assignmentController.text)
                  +int.parse(middle_termController.text)
                  +int.parse(final_examController.text)).toString();
          if(int.parse(tolal_score) > 95){
            result = "A+";
          }
          else if(int.parse(tolal_score) >= 90){
            result = "A0";
          }
          else if(int.parse(tolal_score) >= 85){
            result = "B+";
          }
          else if(int.parse(tolal_score) >= 80){
            result = "B0";
          }
          else if(int.parse(tolal_score) >= 75){
            result = "C+";
          }
          else if(int.parse(tolal_score) >= 70){
            result = "C0";
          }
          else if(int.parse(tolal_score) >= 65){
            result = "D+";
          }
          else if(int.parse(tolal_score) >= 60){
            result = "D0";
          }
          else{
            result = "F";
          }

        }catch(e){}
      });
    }


  }

  // 드롭다운.
  OverlayEntry _customDropdown() {
    return OverlayEntry(
      maintainState: true,
      builder: (context) => Positioned(
        width: _dropdownWidth,
        child: CompositedTransformFollower(
          link: _layerLink,
          offset: const Offset(0, _dropdownHeight),
          child: Material(
            color: Colors.white,
            child: Container(
              height: (22.0 * _dropdownList.length) + (21 * (_dropdownList.length - 1)) + 20,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: _dropdownList.length,
                itemBuilder: (context, index) {
                  return CupertinoButton(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    pressedOpacity: 1,
                    minSize: 0,
                    onPressed: () {
                      setState(() {
                        credit = _dropdownList.elementAt(index);
                        if(credit == "교양"){
                          required = "선택";
                        }
                        else{
                          required = "-";
                        }

                      });
                      _removeOverlay();
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        _dropdownList.elementAt(index),
                        style: font_bold(14, Colors.black),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Divider(
                      color: Colors.grey,
                      height: 20,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
  OverlayEntry _customDropdown2() {
    return OverlayEntry(
      maintainState: true,
      builder: (context) => Positioned(
        width: _dropdownWidth,
        child: CompositedTransformFollower(
          link: _layerLink2,
          offset: const Offset(0, _dropdownHeight),
          child: Material(
            color: Colors.white,
            child: Container(
              height: (22.0 * _dropdownList2.length) + (21 * (_dropdownList2.length - 1)) + 20,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: _dropdownList2.length,
                itemBuilder: (context, index) {
                  return CupertinoButton(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    pressedOpacity: 1,
                    minSize: 0,
                    onPressed: () {
                      setState(() {
                        required = _dropdownList2.elementAt(index);
                      });
                      _removeOverlay2();
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        _dropdownList2.elementAt(index),
                        style: font_bold(14, Colors.black),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Divider(
                      color: Colors.grey,
                      height: 20,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  static const List<String> _dropdownList = ['전공', '교양'];
  static const List<String> _dropdownList2 = ['선택', '필수'];

  // 드롭박스.
  OverlayEntry? _overlayEntry;
  OverlayEntry? _overlayEntry2;
  final LayerLink _layerLink = LayerLink();
  final LayerLink _layerLink2 = LayerLink();
  static const double _dropdownWidth = 100;
  static const double _dropdownHeight = 36;

  // 드롭다운 생성.
  void _createOverlay() {
    if (_overlayEntry == null) {
      _overlayEntry = _customDropdown();
      Overlay.of(context)?.insert(_overlayEntry!);
      if (_overlayEntry2 != null) {
        _overlayEntry2?.remove();
        _overlayEntry2 = null;
      }
    }
    else{
      _overlayEntry?.remove();
      _overlayEntry = null;
      _overlayEntry2?.remove();
      _overlayEntry2 = null;
    }
  }
  void _createOverlay2() {
    if (_overlayEntry2 == null) {
      _overlayEntry2 = _customDropdown2();
      Overlay.of(context)?.insert(_overlayEntry2!);
      if (_overlayEntry != null) {
        _overlayEntry?.remove();
        _overlayEntry = null;
      }
    }
    else{
      _overlayEntry?.remove();
      _overlayEntry = null;
      _overlayEntry2?.remove();
      _overlayEntry2 = null;
    }
  }

  // 드롭다운 해제.
  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _removeOverlay2() {
    _overlayEntry2?.remove();
    _overlayEntry2 = null;
  }

  @override
  void dispose() {
    _overlayEntry?.dispose();
    _overlayEntry2?.dispose();
    super.dispose();
  }

  YYDialog _showDioalog(BuildContext context) {

    return YYDialog().build(context)
      ..width = 400
      ..borderRadius = 4.0
      ..text(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
          alignment: Alignment.center,
          text: "과목명 : ${subjectController.text}",
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          fontFamily: "NotoSansKR_Medium"
      )
      ..text(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 32),
          alignment: Alignment.center,
          text: "삭제 하시겠습니까?",
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.w500, fontFamily: "NotoSansKR_Medium"
      )
      ..divider()
      ..dismissCallBack = () {

      }
      ..doubleButton(
        padding: const EdgeInsets.only(top: 10.0),
        gravity: Gravity.center,
        withDivider: true,
        text1: "확인",

        fontFamily1: "NotoSansKR_Medium",
        fontFamily2: "NotoSansKR_Medium",
        color1: Colors.deepPurpleAccent,
        fontSize1: 14.0,
        fontWeight1: FontWeight.bold,
        onTap1: () {
          setState(() {
            dataDeleting = true;
          });
          deleteWidget(int.parse(grade), int.parse(id), true);
        },
        text2: "취소",
        color2: Colors.redAccent,
        fontSize2: 14.0,
        fontWeight2: FontWeight.bold,
        onTap2: () {

        },
      )
      ..show();
  }

  bool dataDeleting = false;
}

class GridBottom extends StatefulWidget {

  GridBottom({
    Key? key,
    required this.list,
  }): super(key: key);

  List list;

  @override
  State<GridBottom> createState() => _GridBottomState(list: list);
}

class _GridBottomState extends State<GridBottom> {

  _GridBottomState({
    required this.list,
  });
  List list;

  String unit = "0";
  String attendance = "0";
  String assignment = "0";
  String middle_term = "0";
  String final_exam = "0";
  String total_score = "";
  String average_score = "";
  String result = "";
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for(int i = 0; i < list.length; i++){
      unit = (int.parse(unit) + int.parse(list[i].unit)).toString();

       //if(grade == null || id == null || credit == null || credit == null || required == null || subject == null || unit == null || attendance == null || assignment == null || middle_term == null || final_exam == null){}

      if(list[i].unit != "1"){
        attendance = (int.parse(attendance) + int.parse(list[i].attendance)).toString();
        assignment = (int.parse(assignment) + int.parse(list[i].assignment)).toString();
        middle_term = (int.parse(middle_term) + int.parse(list[i].middle_term)).toString();
        final_exam = (int.parse(final_exam) + int.parse(list[i].final_exam)).toString();
        index++;
      }
    }

    total_score = (
        int.parse(attendance)
        + int.parse(assignment)
        + int.parse(middle_term)
        + int.parse(final_exam)).toString();

    if(index == 0){
      average_score = "";
      result = "";
    }
    else{
      average_score = (int.parse(total_score) ~/ index).toString();

      if(int.parse(average_score) >= 95){
        result = "A+";
      }
      else if(int.parse(average_score) >= 90){
        result = "A0";
      }
      else if(int.parse(average_score) >= 85){
        result = "B+";
      }
      else if(int.parse(average_score) >= 80){
        result = "B0";
      }
      else if(int.parse(average_score) >= 75){
        result = "C+";
      }
      else if(int.parse(average_score) >= 70){
        result = "C0";
      }
      else if(int.parse(average_score) >= 65){
        result = "D+";
      }
      else if(int.parse(average_score) >= 60){
        result = "D0";
      }
      else{
        result = "F";
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 4,
          child: Container(
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text("합계", style: font_bold(14, Colors.black),),)
          ),
        ),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text(unit, style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text(attendance, style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text(assignment, style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text(middle_term, style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text(final_exam, style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text(total_score, style: font_bold(14, Colors.black),),)
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text(average_score, style: font_bold(14, Colors.black),),
              )
          ),),

        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(left: 4),
              color: primaryColor,
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
              child: Center(
                child: Text(result, style: font_bold(14, result != "F" ? Colors.black : Colors.red),),
              )
          ),),

        const SizedBox(
          width: 60,)
      ],
    );
  }

}