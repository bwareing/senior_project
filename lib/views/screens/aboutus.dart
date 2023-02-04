import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_app/views/screens/homepage.dart';

class OurStory extends StatefulWidget{
  @override
  _OurStory createState()=> _OurStory();

}

class _OurStory extends State<OurStory>{
  @override
  Widget build(BuildContext context){
         return Scaffold(
        appBar: AppBar(
          title: const Text('Our story/Purpose'),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 59, 77, 86),
             
        ),
        body:Center(
          child: Column(children:[
            const Expanded(
              child:Text(
                "   Counselor Outreach out reach has a mission to help those who need mental health services but can not aford it. There was a time in my life were I was having a pretty hard time. Me and my wife were trying to have a child. We had unprotected sex for a few months. We did not get pregnant and decied it was time to get checked out. They did some test on her and found most things were normal. The only thing they found was easly treated by medication. It was then time to test me, which I was pretty afraid of.\n   I could not control how my wife would react if it was my fault. I had a fear of her leaving me if I could not give her children. They had me do a sperm test and my counts were low. They had me try a couple of things to get it up with no luck. This made me go into a deep depression that I had never felt in my life. That is why I choose to make this website. So mental health professionals could volunteer their time to give couseling to people who could not afford counseling. So in short Counselor Outreach is trying to connect counselor out of the goodness of their hearts will help people without being payed in return. ",
              
                style: TextStyle(fontSize: 25),
              )
               
            ),

          ] 
          ),

        )
    
         );
         
  }
}