import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resultpage.dart';
import 'calculatorbrain.dart';
const inactivecardcolor = Color(0xFF101336);
const activecardcolor = Color(0xFF263140);
class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  var malecardcolor = inactivecardcolor;
  var femalecardcolor = inactivecardcolor;
  var weight = 74;
  var height = 180;
  var age = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:Text("BMI Calculator",style: TextStyle(
          fontWeight: FontWeight.bold
        ),)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        malecardcolor = activecardcolor;
                        femalecardcolor = inactivecardcolor;
                      });
                    },
                    child: ReusableCard(
                    colour:malecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text("Male",style:TextStyle(fontSize: 18.0,color: Color(0xFFFCFDFF)))
                      ],
                    ),
                  ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                       femalecardcolor = activecardcolor;
                       malecardcolor = inactivecardcolor; 
                      });
                    },
                    child: ReusableCard(colour:femalecardcolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                          FontAwesomeIcons.venus,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text("Female",style:TextStyle(fontSize: 18.0,color: Color(0xFFFCFDFF)))
                    ],
                  ),),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour:Color(0xFF101336),
            cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("HEIGHT",style:TextStyle(
                  fontSize:18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white30
                )),
                Text("$height cm",style: TextStyle(color: Colors.white,
                fontSize:26.0,fontWeight: FontWeight.bold,)),
                Slider(
                  value: height.toDouble(),
                  min: 120,
                  max: 220,
                  activeColor: Colors.pink,
                  inactiveColor: Colors.white30,
                  onChanged: (double newValue){
                    setState(() {
                      height = newValue.round();  
                    });
                  },
                )
              ],
            ),),
            
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour:Color(0xFF101336),
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("WEIGHT",style: TextStyle(
                        color: Colors.white30,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                      ),),
                      Text("$weight",style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                               weight++; 
                              });
                            },
                            child: CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Color(0xFF1C2033),
                            child: Icon(
                              Icons.add,
                              size:30.0
                            ),
                          ),
                          ),
                          
                          SizedBox(
                            width: 12.0,
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                               weight--; 
                              });
                            },
                            child: CircleAvatar(
                            backgroundColor: Color(0xFF1C2033),
                            radius: 25.0,
                            child: Icon(
                              Icons.remove,
                              size:30.0
                            ),
                          ),
                          )
                        ],
                      )
                    ],
                  ),),
                ),
                Expanded(
                  child: ReusableCard(colour:Color(0xFF101336),
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("AGE",style: TextStyle(
                        color: Colors.white30,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                      ),),
                      Text("$age",style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                               age++; 
                              });
                            },
                            child: CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Color(0xFF1C2033),
                            child: Icon(
                              Icons.add,
                              size:30.0
                            ),
                          ),
                          ),
                          
                          SizedBox(
                            width: 12.0,
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                               age--; 
                              });
                            },
                            child: CircleAvatar(
                            backgroundColor: Color(0xFF1C2033),
                            radius: 25.0,
                            child: Icon(
                              Icons.remove,
                              size:30.0
                            ),
                          ),
                          )
                        ],
                      )
                    ])),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Calculatorbrain calc = Calculatorbrain(height: height,weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Resultpage(
                  bmiResult: calc.getbmi(),
                  result: calc.getresults(),
                  comments: calc.getcomments(),
                );
              }));
            },
            child: Container(
            child: Center(
              child: Text("CALCULATE YOUR BMI",style: TextStyle(
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
      )
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour,this.cardchild});
  final Color colour;
  final Widget cardchild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:cardchild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0)
      ),
    );
  }
}