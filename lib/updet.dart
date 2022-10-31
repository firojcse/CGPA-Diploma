import 'package:cgpa_diploma/progress.dart';
import 'package:flutter/material.dart';
class Updet_Class extends StatefulWidget {
  const Updet_Class({Key? key}) : super(key: key);

  @override
  _Updet_ClassState createState() => _Updet_ClassState();
}
bool settings1=false;
bool setting2=false;
class _Updet_ClassState extends State<Updet_Class> {
  TextEditingController number1= TextEditingController();
  TextEditingController number2= TextEditingController();
  TextEditingController number3= TextEditingController();
  TextEditingController number4= TextEditingController();
  TextEditingController number5= TextEditingController();
  TextEditingController number6= TextEditingController();
  TextEditingController number7= TextEditingController();
  TextEditingController number8= TextEditingController();
  double cgpa=0.00, num1=0.00,num2=0.00,num3=0.00,num4=0.00,num5=0.00,num6=0.00,num7=0.00,num8=0.00;
  Cgpa(){
    setState(() {
      num1=double.parse(number1.text);
      num2=double.parse(number2.text);
      num3=double.parse(number3.text);
      num4=double.parse(number4.text);
      num5=double.parse(number5.text);
      num6=double.parse(number6.text);
      num7=double.parse(number7.text);
      num8=double.parse(number8.text);
      cgpa=(num1*0.05+num2*0.05+num3*0.05+num4*0.15+num5*0.15+num6*0.20+num7*0.25+num8*0.10);
    });
  }
  dispose(){
    number1.clear();
    number2.clear();
    number3.clear();
    number4.clear();
    number5.clear();
    number6.clear();
    number7.clear();
    number8.clear();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        final value = await
        showDialog<bool>
          (context: context,
            builder: (context){
              return AlertDialog(
                title: Text("Exit Button"),
                content: Text("Are you sure want to exit?"),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.of(context).pop(false);
                  },
                      child: Text("No")),
                  TextButton(onPressed: (){
                    Navigator.of(context).pop(true);
                  },
                      child: Text("Yes")),
                ],
              );
            });
        if (value != null){
          return Future.value(value);
        }
        else{
          return Future.value(false);
        }
      },
      child: Scaffold(

        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black26,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            alignment: Alignment.center,
                           children: [
                           Text("Dip. in Eng. - Probidhan 2016", style: TextStyle(fontSize: 15),),
                           ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black26,
                        ),
                        height: 60,
                        width: MediaQuery.of(context).size.width/2.3,
                        child: Center(
                          child: TextField(
                            cursorColor: Colors.red,
                            controller: number1,
                            decoration: InputDecoration(
                                hintText: "Enter your 1st point",
                                labelText: "First Semester",
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black26,
                        ),
                        height: 60,
                        width: MediaQuery.of(context).size.width/2.3,
                        child: Center(
                          child: TextField(
                            cursorColor: Colors.red,
                            controller: number2,
                            decoration: InputDecoration(
                                hintText: "Enter your 2nd point",
                                labelText: "Second Semester",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black26,
                        ),
                        height: 60,
                        width: MediaQuery.of(context).size.width/2.3,
                        child: Center(
                          child: TextField(
                            cursorColor: Colors.red,
                            controller: number3,
                            decoration: InputDecoration(
                                hintText: "Enter your 3rd point",
                                labelText: "Third Semester",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black26,
                        ),
                        height: 60,
                        width: MediaQuery.of(context).size.width/2.3,
                        child: Center(
                          child: TextField(
                            cursorColor: Colors.red,
                            controller: number4,
                            decoration: InputDecoration(
                                hintText: "Enter your 4th point",
                                labelText: "Fourth Semester",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black26,
                        ),
                        height: 60,
                        width: MediaQuery.of(context).size.width/2.3,
                        child: Center(
                          child: TextField(
                            cursorColor: Colors.red,
                            controller: number5,
                            decoration: InputDecoration(
                                hintText: "Enter your 5th point",
                                labelText: "Fifth Semester",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black26,
                        ),
                        height: 60,
                        width: MediaQuery.of(context).size.width/2.3,
                        child: Center(
                          child: TextField(
                            cursorColor: Colors.red,
                            controller: number6,
                            decoration: InputDecoration(
                                hintText: "Enter your 6th point",
                                labelText: " Six Semester",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black26,
                        ),
                        height: 60,
                        width: MediaQuery.of(context).size.width/2.3,
                        child: Center(
                          child: TextField(
                            cursorColor: Colors.red,
                            controller: number7,
                            decoration: InputDecoration(
                                hintText: "Enter your 7th point",
                                labelText: "Seven Semester",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black26,
                        ),
                        height: 60,
                        width: MediaQuery.of(context).size.width/2.3,
                        child: Center(
                          child: TextField(
                            cursorColor: Colors.red,
                            controller: number8,
                            decoration: InputDecoration(
                                hintText: "Enter your 8th point",
                                labelText: "Eight Semester",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Divider(height: 2,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black26,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 50),
                              child: Text("Total CGPA:",style: TextStyle(fontSize: 18),),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(

                                  child: Text("$cgpa",style: TextStyle(fontSize: 18),),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black,
                          ),
                          height: 60,
                          width: MediaQuery.of(context).size.width/2.2,
                          child: TextButton(
                            onPressed: (){
                              dispose();
                            },
                            child: Text("RESET",style: TextStyle(fontSize: 18),),
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green,
                          ),
                          height: 60,
                          width: MediaQuery.of(context).size.width/2.2,
                          child: TextButton(
                            onPressed: (){
                             Cgpa();


                             // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Chart_Class(semester1: number1.text, semester2: number2.text, semester3: number3.text, semester4: number4.text)));
                            },
                            child: Text("CALCULATE",style: TextStyle(fontSize: 18,color: Colors.white),),
                          ),
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(5),
                        //     color: Colors.green,
                        //   ),
                        //   height: 60,
                        //   width: MediaQuery.of(context).size.width/2.2,
                        //   child: TextButton(
                        //     onPressed: (){
                        //
                        //
                        //
                        //      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Chart_Class(semester1: number1.text, semester2: number2.textext, semester3: number3.text, semester4: number4.text, semester5: number5.text, semester6: number6.text, semester7: number7.text, semester8: number8.text)));
                        //     },
                        //     child: Text("Mack Grap Chart",style: TextStyle(fontSize: 18,color: Colors.white),),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
