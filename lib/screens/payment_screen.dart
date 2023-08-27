import 'package:camp_code_project/models/payment_model.dart';
import 'package:camp_code_project/screens/add_new_card_screen.dart';
import 'package:camp_code_project/widgets/appbar.dart';
import 'package:flutter/material.dart';

class paymentScreen extends StatefulWidget {
  const paymentScreen({Key? key}) : super(key: key);

  @override
  State<paymentScreen> createState() => _paymentScreenState();
}

class _paymentScreenState extends State<paymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appbar(title: 'Payment'),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 30.0),
             child: Row(
               children: [
                 Text("Card Management",style: TextStyle(
                     fontSize: 18,
                     decoration: TextDecoration.none,
                     color:Color(0xff121420),
                     fontFamily: 'Product Sans'
                 ),),
                 Spacer(),
                 GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>addNewCardScreen()));
                   },
                   child: Text("Add news+",style: TextStyle(
                       fontSize: 14,
                       decoration: TextDecoration.none,
                       color:Color(0xffED0006),
                       fontFamily: 'Product Sans'
                   ),),
                 ),
               ],
             ),
           ),
            SizedBox(height: 15,),
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: paymentList.length,
                itemBuilder: (context,index)=>  Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                           Image.asset("assets/images/visa.png") ,

                            Text(paymentList[index]['number'],style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 20
                            ),),
                          ],
                        )
                      ],
                    ),



                  ],
                ),
                separatorBuilder:(context,index)=>  SizedBox(height: 10,),


              ),


            ),

            Padding(
              padding: const EdgeInsets.only(left: 38.0,bottom: 10),
              child: Text("or check out with",style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.none,
                  color:Color(0xff33302E),
                  fontFamily: 'Product Sans',
                fontWeight: FontWeight.w500

              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48.0),
              child: Row(
                children: [
                  Image.asset("assets/icons/Method=PayPal.png",height: 50,width: 60,),
                  SizedBox(width: 5,),
                  Image.asset("assets/icons/Method=Visa.png",height: 50,width: 60,),
                  SizedBox(width: 5,),
                  Image.asset("assets/icons/Method=Mastercard.png",height: 50,width: 60,),
                  SizedBox(width: 5,),
                  Image.asset("assets/icons/Method=Alipay.png",height: 50,width: 60,),
                  SizedBox(width: 5,),
                  Image.asset("assets/icons/Method=Amex.png",height: 50,width: 60,),

                ],
              ),
            )
          ],

        ),
      ),

    );
  }
}
