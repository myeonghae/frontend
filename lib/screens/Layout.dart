import 'package:flutter/material.dart';

class Layout extends StatefulWidget {

  Layout({super.key, required this.contents});
  var contents;

  @override
  State<Layout> createState() => _LayoutState(contents: contents);
}

class _LayoutState extends State<Layout> {

  _LayoutState({required this.contents});
  var contents;

  ScrollController scollBarController = ScrollController(initialScrollOffset: 0.0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scrollbar(
        isAlwaysShown: true, //always show scrollbar
        thickness: 10, //width of scrollbar
        radius: const Radius.circular(10), //corner radius of scrollbar
        scrollbarOrientation: ScrollbarOrientation.bottom, //which side to show scrollbar
        controller: scollBarController,
        child:
        SingleChildScrollView(
          controller: scollBarController,
          scrollDirection: Axis.horizontal,
          child:
          Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width < 980 ? 980 : MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: contents
            ),
          )
        ),
      ),
    );
  }
}
