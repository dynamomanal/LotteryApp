import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp( 
   const  MyApp()
    );
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  //The random class in dart can generate , double integer both in it therefore it's type can't be any one we will Random named custom variable
  int x = 0;
  int y = 0;
  
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home:
      Scaffold(
        floatingActionButton:FloatingActionButton
          (onPressed: (

            )
    {
      x = random.nextInt(10);
      y= random.nextInt(10);
     
       

//by adding setState the view is refreshed
      setState((){

      });
    },
    child:const Icon(Icons.add),
    ),

        appBar:AppBar(),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Center(child:Text('Lottery winning number is $y')),
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Container(
                   height: 250,
                   decoration:BoxDecoration(
                     color: x==y? Colors.redAccent:Colors.lightBlueAccent.withOpacity(0.2),
                     borderRadius: const BorderRadius.horizontal()
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Center(
                       child: Column(
                         children:[
                           const Icon(Icons.error ),
                           const SizedBox(height:15,),
                           Text( x==y? "Congratulations You Won The Lottery , your number is $x": "Better Luck next time your number is $x , try again")
                                        
                           ],
                       ),
                     ),
                   )
               
                 ),
               )
              ],
        
            ),
          ),
        ),




      ),
    );
  }
}














