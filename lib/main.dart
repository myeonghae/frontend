import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:frontend/controllers/page_1_Controller.dart';
import 'package:frontend/screens/Layout.dart';
import 'package:provider/provider.dart';


import 'componets/pages/page_1.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '201644038 간명해 - 프론트엔드',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Page_1_Provider()
          )
        ],
        child: const MainActivity(),
      )
    );
  }
}

class MainActivity extends StatefulWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> with TickerProviderStateMixin{


  int index = 0;

  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,  //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 11,
        title: Text('Front End 프로젝트', style: font_bold(16, Colors.black),),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.info_outline), onPressed: (){
          _showDioalog(context);
        }),
      ),
      body: Layout(contents:
      Column(
        children: [
          Container(

            child: TabBar(
              tabs: [
                Container(
                  height: 48,
                  alignment: Alignment.center,
                  child: Text(
                    '전체',style: font_medium(14, Colors.black)
                  ),
                ),
                Container(
                  height: 48,
                  alignment: Alignment.center,
                  child: Text(
                    '1학년',style: font_medium(14, Colors.black)
                  ),
                ),
                Container(
                  height: 48,
                  alignment: Alignment.center,
                  child: Text(
                    '2학년',style: font_medium(14, Colors.black)
                  ),
                ),
                Container(
                  height: 48,
                  alignment: Alignment.center,
                  child: Text(
                    '3학년',style: font_medium(14, Colors.black)
                  ),
                ),
              ],
              indicator: const BoxDecoration(
                color: primaryColor
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              controller: _tabController,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Column(children: [
                    Page_1(grade: 1),
                    Page_1(grade: 2),
                    Page_1(grade: 3),
                  ],),
                ),
                SingleChildScrollView(
                    child: Column(children: [
                      Page_1(grade: 1),
                    ],)
                ),

                SingleChildScrollView(
                    child: Column(children: [
                      Page_1(grade: 2),
                    ],)
                ),

                SingleChildScrollView(
                    child: Column(children: [
                      Page_1(grade: 3),
                    ],)
                ),

              ],
            ),
          ),
        ],
      ),
      )
    );
  }


  YYDialog _showDioalog(BuildContext context) {

    return YYDialog().build(context)
      ..width = 400
      ..borderRadius = 4.0
      ..text(
        padding: EdgeInsets.only(left: 16, right: 16, top: 32),
        alignment: Alignment.center,
        text: "Copyright 2022. 201644038 간명해",
        color: Colors.black,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        fontFamily: "NotoSansKR_Medium"
      )
      ..text(
        padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 32),
        alignment: Alignment.center,
        text: "All rights Reserved",
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
}



