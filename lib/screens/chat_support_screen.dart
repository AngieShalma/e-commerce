import 'package:camp_code_project/widgets/chat_shape.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../constant.dart';
import '../models/messages_model.dart';

class chatSupportScreen extends StatefulWidget {
  static String id = 'ChatPage';

  @override
  State<chatSupportScreen> createState() => _chatSupportScreenState();
}

class _chatSupportScreenState extends State<chatSupportScreen> {
  final _controller = ScrollController();

  CollectionReference messages =
  FirebaseFirestore.instance.collection(kMessagesCollections);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //from login to know the sender of message by id(email)


    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 25,right: 25,top: 40,bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                        setState(() {

                        });
                      },
                      child: Image.asset("assets/icons/Frame 361.png",width:36,height:36,)),
                  SizedBox(width: 25,),
                  Stack(
                    children: [
                      Image.asset("assets/images/person frame.png",height: 36,width: 36,),
                      Image.asset("assets/images/Filled.png",height: 36,width: 36,),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Color(0xff50897B),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Admin",style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          color:Color(0xff000000),
                          fontFamily: 'Product Sans'
                      ),),
                      //SizedBox(height: 5,),
                      Text("Online",style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.none,
                          color:Color(0xff000000).withOpacity(0.85),
                          fontFamily: 'Product Sans'
                      ),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert,color: Colors.black,)

                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Color(0xff000000).withOpacity(0.25),
            )
          ],
        ),
      ),
    );
  }
}