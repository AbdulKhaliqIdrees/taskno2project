import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget{
  const ChatItem(this.text1,this.text2,{Key? key}) : super(key: key);
 final String text1;
 final String text2;
  @override
  Widget build(BuildContext context) {
     return Container(
                    width: 150,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.settings,),
                        Text(text1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        Text(text2,style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape:BoxShape.circle,
                    ),
                  );
  }

}