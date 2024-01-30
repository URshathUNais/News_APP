import 'package:flutter/material.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(height: 300,),

          
          FadeInImage(
            
            placeholder : AssetImage("assets/img/logo.png"),
          image: AssetImage("assets/img/logo.png") ,
          
          height: 230 , width: 230,),

          Spacer(),
          Text("WELCOME TO OUR NEWS APPLICATION" ,textAlign: TextAlign.center ,style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
        ],
      )),
    );
  }
}