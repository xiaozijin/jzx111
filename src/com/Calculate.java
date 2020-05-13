package com;
import java.math.*;
//两数运算
public class Calculate {
    //第一个数字，初始化0
   private String num1 = "0";
   //第二个数字，初始化0
   private  String num2 = "0";
   //初始化计算符为+号
   private char operator = '+';
   //计算结果
   private  String result;
   //get、set方法
   public  void setNum1(String num1){
       this.num1 = num1;
   }
   public  String getNum1(){
       return  num1;
   }
   public  void setNum2(String num2){
       this.num2 = num2;
   }
   public  String getNum2(){
       return  num2;
   }
   public  void setOperator(char operator){this.operator = operator;}
   public  char getOperator(){return  operator;}
   public  void setResult(String result){this.result = result;}
   public  String getResult(){return  result;}

   public Calculate(){

    }

    public  void calculate(){
       //引用MATH类
       BigDecimal first = new BigDecimal(num1);
       BigDecimal second = new BigDecimal(num2);
       //选择计算符运算
       switch (this.operator){
           //+运算
           case '+':{
               this.result = first.add(second).toString();
               break;
           }
           //-运算
           case '-':{
               this.result = first.subtract(second).toString();
               break;
           }
           //*运算
           case '*':{
               this.result = first.multiply(second).toString();
               break;
           }
           //除运算
           case '/':{
               //判断被除数为0
               if(second.doubleValue()==0){
                   throw new RuntimeException("被除数不能为0！！！");
               }
               this.result = first.divide(second).toString();
               break;
           }
           default:break;
       }
    }
}
