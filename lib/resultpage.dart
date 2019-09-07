import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  Resultpage({@required this.bmiResult,@required this.result,@required this.comments});
  final String bmiResult;
  final String result;
  final String comments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("BMI Calculator")),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Text("Your Result",style: TextStyle(
            color:Colors.white,
            fontSize:30.0,
            fontWeight: FontWeight.bold,  
          ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                child: Container(
                color: Color(0xFF101336),
                margin: EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 25.0,),
                    Center(child:Text(result.toUpperCase(),style: TextStyle(
                      color: Color(0xFF009F4E),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),)),
                    SizedBox(height: 25.0,),
                    Center(
                      child: Text(bmiResult,style:TextStyle(
                        color:Colors.white,
                        fontSize:75.0,
                        fontWeight: FontWeight.bold
                      )),
                    ),
                    SizedBox(height: 25.0,),
                    Center(
                      child: Text("NORMAL BMI RANGE",style:TextStyle(
                        color:Color(0xFF696B7A),
                        fontSize:20.0
                      )),
                    ),
                    SizedBox(height: 15.0,),
                    Center(
                      child: Text("18.5 - 24.9 kg/m^2",style:TextStyle(
                        color:Colors.white,
                        fontSize:18.0
                      )),
                    ),
                    SizedBox(height: 65.0,),
                    Center(
                      child: Text(comments,textAlign: TextAlign.center,style:TextStyle(
                        color:Colors.white,
                        fontSize:22.0
                      )),
                    )                   
                  ],
                ),
                ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Center(
                      child: Text("RE-CALCULATE YOUR BMI",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                    ),),
                    ),
                    color: Color(0xFFEB1555),
                    margin: EdgeInsets.only(top : 10.0),
                    width: double.infinity,
                    height: 65.0,
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}