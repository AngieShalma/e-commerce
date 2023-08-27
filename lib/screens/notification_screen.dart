import 'package:camp_code_project/models/notification_model.dart';
import 'package:camp_code_project/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notificationScreen extends StatefulWidget {
  const notificationScreen({Key? key}) : super(key: key);

  @override
  State<notificationScreen> createState() => _notificationScreenState();
}

class _notificationScreenState extends State<notificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: Container(
        child: Column(
          children: [
            appbar(title: 'Notification',),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: notificationList.length,
                itemBuilder: (context,index)=>  Container(
                  padding :EdgeInsets.only(left: 25.0,right: 30,top: 20,bottom: 20),
                  margin: EdgeInsets.only(left: 25.0,right: 30,bottom: 15),
                  width: 315,
                   //    height: 105,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffFFFFFF)
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(notificationList[index]['title'],style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color(0xff222222),
                          fontSize: 14,
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.w500,

                      ),),
                      SizedBox(height: 10,),
                      Text(notificationList[index]['description'],style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color(0xff686868),
                          fontSize: 13,
                          fontFamily: ' Roboto',

                      ),)
                    ],
                  ),
                ),
                separatorBuilder:(context,index)=>  SizedBox(height: 10,),


              ),
            ),

          ],
        ),
      ),

    );
  }
}
