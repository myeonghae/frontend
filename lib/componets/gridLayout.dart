

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';
import '../controllers/page_1_Controller.dart';

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
    width: 36,)
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
    required this.isAdded
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
      isAdded: isAdded
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
    required this.isAdded
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
        credit = "";
        required = "";
        subject = "";
        unit = "";
        attendance = "";
        assignment = "";
        middle_term = "";
        final_exam = "";
      }
      else{
        tolal_score = (int.parse(attendance) + int.parse(assignment) + int.parse(middle_term) + int.parse(final_exam)).toString();
        if(int.parse(tolal_score) >= 95){
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
        // 95 A+
        // 90 A0

        // 85 B+
        // 80 B0

        // 75 C+
        // 70 C0

        // 65 D+
        // 60 D0
      }

      subjectController.text = subject;
      unitController.text = unit;
      attendanceController.text = attendance;
      assignmentController.text = assignment;
      middle_termController.text = middle_term;
      final_examController.text = final_exam;

    }catch(e){
      print(e);
    }

  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
      margin: const EdgeInsets.only(top: 4),
      height: 34 ,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                color: _color,
                padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
                child: Center(
                  child: AutoSizeText(credit, style: font_bold(14, Colors.black),overflow: TextOverflow.ellipsis,),)
            ),
          ),

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
                      }
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

          !isAdded ?
          Container(
              width: 32,
              margin: EdgeInsets.only(left: 4),
              height: double.infinity,
              color: Colors.transparent,
              child: Center(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    child: const Center(
                      child: Icon(
                        Icons.delete,
                        size: 18,
                        color: Colors.red,
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        deleteWidget(int.parse(grade), int.parse(id));
                      });
                    },
                  )
              )
          ) :
          (int.parse(id)==51754567) ? Container(
            width: 32,
            margin: EdgeInsets.only(left: 4),
            height: double.infinity,
            color: Colors.transparent,
            child: Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(25),
                  child: const Center(
                    child: Icon(
                      Icons.delete,
                      size: 18,
                      color: Colors.red,
                    ),
                  ),
                  onTap: (){

                    setState(() {
                      deleteWidget(int.parse(grade), int.parse(id));
                    });
                  },
                )
            )):
          SizedBox(width: 36,)


        ],
      ),
    );

  }
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
          width: 36,)
      ],
    );
  }
}