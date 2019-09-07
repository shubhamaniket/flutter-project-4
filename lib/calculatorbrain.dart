import 'dart:math';

class Calculatorbrain{
  Calculatorbrain({this.height,this.weight});
  final int height;
  final int weight;
  double bmi;
  String getbmi(){
    bmi = weight/pow(height/100,2);
    return bmi.toStringAsFixed(1);
  }
  String getresults(){
    if(bmi>=25){
      return 'Overweight';
    }
    else if(bmi>18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  String getcomments(){
    if(bmi>=25){
      return 'You have more than normal body weight.Eat more !';
    }
    else if(bmi>18.5){
      return 'You have normal body weight.Maintain it !';
    }
    else{
      return 'You have lower body weight than usual.Eat more !';
    }
  }
}