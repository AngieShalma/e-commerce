import 'package:camp_code_project/screens/profile_settings_screen.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Container(
        height: 500,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 28.0,vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/profilePicture.png",width: 60,height:60,),
                  SizedBox(width: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text("name",style: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color:Colors.black
                      ),),
                      Text("email@gmail.com",style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          color:Colors.black
                      ),),

                    ],
                  ),
                 Spacer(),
                  GestureDetector(
                    onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>profileSettingsScreen()));
                    },
                      child: Image.asset("assets/icons/Setting.png",width: 60,height: 60,)),

                ],
              ),
            ),
            Container(
              width: 327,
              height: 460,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1,
                      color: Color(0xffF2F2F2))
              ),
              child:
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/icons/Location.png",width: 60,height:60,),
                      Text("Adress",style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          color:Color(0xff33302E),
                      ),),
                      Spacer(),
                      Image.asset("assets/icons/Arrow - Right 2.png",width: 60,height:60,),

                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xffF3F3F6),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/icons/Wallet.png",width: 60,height:60,),
                      Text("Payment method",style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        color:Color(0xff33302E),
                      ),),
                      Spacer(),
                      Image.asset("assets/icons/Arrow - Right 2.png",width: 60,height:60,),

                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xffF3F3F6),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/icons/Ticket.png",width: 60,height:60,),
                      Text("Voucher",style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        color:Color(0xff33302E),
                      ),),
                      Spacer(),
                      Image.asset("assets/icons/Arrow - Right 2.png",width: 60,height:60,),

                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xffF3F3F6),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/icons/Favorite_fill.png",width: 60,height:60,),
                      Text("My Wishlist",style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        color:Color(0xff33302E),
                      ),),
                      Spacer(),
                      Image.asset("assets/icons/Arrow - Right 2.png",width: 60,height:60,),

                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xffF3F3F6),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/icons/Star_fill.png",width: 60,height:60,),
                      Text("Rate this app",style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        color:Color(0xff33302E),
                      ),),
                      Spacer(),
                      Image.asset("assets/icons/Arrow - Right 2.png",width: 60,height:60,),

                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xffF3F3F6),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/icons/Logout.png",width: 60,height:60,),
                      Text("Rate this app",style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        color:Color(0xff33302E),
                      ),),
                      Spacer(),
                      Image.asset("assets/icons/Arrow - Right 2.png",width: 60,height:60,),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
