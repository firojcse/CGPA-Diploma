import 'package:cgpa_diploma/progress.dart';
import 'package:cgpa_diploma/updet.dart';
import 'package:flutter/material.dart';

class CGPA_Diploma extends StatefulWidget {
  const CGPA_Diploma({Key? key}) : super(key: key);

  @override
  _CGPA_DiplomaState createState() => _CGPA_DiplomaState();
}

class _CGPA_DiplomaState extends State<CGPA_Diploma> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("BTEB CGPA in Diploma", style: TextStyle(fontSize: 20,),),
            bottom: TabBar(tabs: [
              Tab(child: Text("UPDET"),),
              Tab(child: Text("GRAPHCHART"),),
            ],),
          ),
          body: TabBarView(
            children: [
              Updet_Class(),
              Chart_Class(),
            ],
          ),
        ),
      ),
    );
  }
}

