import 'package:camp_code_project/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/payment_model.dart';

class addNewCardScreen extends StatefulWidget {
  const addNewCardScreen({Key? key}) : super(key: key);

  @override
  State<addNewCardScreen> createState() => _addNewCardScreenState();
}

class _addNewCardScreenState extends State<addNewCardScreen> {
  final cardNameController=TextEditingController();
  final cardNumberController=TextEditingController();
  final expireController=TextEditingController();
  final cvvController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appbar(title: 'Add new card'),

            SizedBox(height: 15,),
            Container(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardList.length,
                itemBuilder: (context,index)=>  Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(cardList[index]) ,

                            Text(cardNumberController.text,style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 20
                            ),),
                          ],
                        ),
                        
                      ],
                    ),



                  ],
                ),
               // separatorBuilder:(context,index)=>  SizedBox(width: 10,),


              ),


            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 25,),
                Image.asset("assets/icons/Method=Visa.png",height: 80,width: 70,),
                // SizedBox(width: 5,),
                Image.asset("assets/icons/Method=Mastercard.png",height: 80,width: 90,),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text("Cardholder Name",style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color(0xff7A869A),
                  fontSize: 15,
                fontFamily: 'Poppins'

              ),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                controller:cardNameController ,
                validator: (value){
                  if(value==null||value.isEmpty){
                    return'please enter Your Name';
                  }
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: 'Card Number',
                  fillColor:Color(0xffFCFCFC) ,
                  filled: true,
                  focusedBorder:OutlineInputBorder(

                    borderSide: BorderSide(
                      color: Colors.transparent,

                    ),
                    borderRadius: BorderRadius.circular(20),
                  ) ,
                  enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(
                      color: Colors.transparent,

                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  // hintText: 'Card Number',
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Color(0xff7A869A), //<-- SEE HERE
                  ),
                  // prefixIcon: Icon(Icons.person),
                ),
                onChanged: (value){
                  cardNameController.text=value;
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text("Card Number",style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color(0xff7A869A),
                  fontSize: 15,
                  fontFamily: 'Poppins'

              ),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                controller: cardNumberController,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CardNumberFormatter(),
                ],
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(


                  fillColor:Color(0xffFCFCFC) ,
                  filled: true,
                  focusedBorder:OutlineInputBorder(

                    borderSide: BorderSide(
                      color: Colors.transparent,

                    ),
                    borderRadius: BorderRadius.circular(20),
                  ) ,
                  enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(
                      color: Colors.transparent,

                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  hintText: 'XXXX XXXX XXXX XXXX',
                ),
                // maxLength: 19,
                onChanged: (value) {},
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
               Expanded(
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 18.0),
                       child: Text("Expires",style: TextStyle(
                           decoration: TextDecoration.none,
                           color: Color(0xff7A869A),
                           fontSize: 15,
                           fontFamily: 'Poppins'

                       ),),
                     ),
                     SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 25.0),
                       child: Container(
                      
                         child: TextFormField(

                           controller:expireController ,
                           validator: (value){
                             if(value==null||value.isEmpty){
                               return'please enter Your expire date';
                             }
                           },
                           keyboardType: TextInputType.name,
                           decoration: InputDecoration(
                             hintText: '03/23',
                             fillColor:Color(0xffFCFCFC) ,
                             filled: true,
                             focusedBorder:OutlineInputBorder(

                               borderSide: BorderSide(
                                 color: Colors.transparent,

                               ),
                               borderRadius: BorderRadius.circular(20),
                             ) ,
                             enabledBorder: OutlineInputBorder(

                               borderSide: BorderSide(
                                 color: Colors.transparent,

                               ),
                               borderRadius: BorderRadius.circular(20),
                             ),

                             // hintText: 'Card Number',
                             hintStyle: TextStyle(
                               fontFamily: 'Poppins',
                               fontSize: 14,
                               color: Color(0xff7A869A), //<-- SEE HERE
                             ),
                             // prefixIcon: Icon(Icons.person),
                           ),
                           onChanged: (value){
                             cardNameController.text=value;
                             setState(() {});
                           },
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
                SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text("cvv",style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Color(0xff7A869A),
                            fontSize: 15,
                            fontFamily: 'Poppins'

                        ),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          
                          child: TextFormField(

                            controller:expireController ,
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return'please enter Your expire date';
                              }
                            },
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: '999',
                              fillColor:Color(0xffFCFCFC) ,
                              filled: true,
                              focusedBorder:OutlineInputBorder(

                                borderSide: BorderSide(
                                  color: Colors.transparent,

                                ),
                                borderRadius: BorderRadius.circular(20),
                              ) ,
                              enabledBorder: OutlineInputBorder(

                                borderSide: BorderSide(
                                  color: Colors.transparent,

                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),

                              // hintText: 'Card Number',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Color(0xff7A869A), //<-- SEE HERE
                              ),
                              // prefixIcon: Icon(Icons.person),
                            ),
                            onChanged: (value){
                              cardNameController.text=value;
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 200,
                height: 50,
                decoration:BoxDecoration(
                  color: Color(0xff343434),
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Center(
                  child: Text("Add card",style: TextStyle(

                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 16,
                    fontFamily: 'Product Sans'
                  ),),
                ),

              ),
            )

          ],

        ),
      ),

    );

  }

}
class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue previousValue,
      TextEditingValue nextValue,
      ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}