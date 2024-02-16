import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ChatBuble extends StatelessWidget {
    ChatBuble({Key ? key,});
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(left: 16,bottom: 32,top: 32,right: 32,),
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(32),
            topRight:Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          color:Colors.yellow.shade200 ,
        ),
        child:  Text('saleh',style: const TextStyle(color: Colors.black),),
      ),
    );
  }
}
class ChatBubleFriend extends StatelessWidget {
  const ChatBubleFriend({Key ? key,});
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.only(left: 16,bottom: 32,top: 32,right: 32,),
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(32),
            topRight:Radius.circular(32),
            bottomLeft: Radius.circular(32),
          ),
          color: Colors.green.shade300,
        ),
        child:  Text('بسم الله',style: const TextStyle(color: Colors.white),),
      ),
    );
  }
}
