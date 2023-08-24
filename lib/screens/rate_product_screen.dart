import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rateProductScreen extends StatefulWidget {
  const rateProductScreen({Key? key}) : super(key: key);

  @override
  State<rateProductScreen> createState() => _rateProductScreenState();
}

class _rateProductScreenState extends State<rateProductScreen> {
  final feedbackController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),

              Row(
                children: [

                  Image.asset("assets/icons/Frame 361.png"),
                  SizedBox(width: 30,),
                  Text("Share your feedback",style: TextStyle(
                    color: Color(0xff1D1F22),
                    fontSize: 18,
                    // fontWeight: FontWeight.w500,
                    fontFamily: 'Product Sans'
                  ),)
                ],
              ),
              SizedBox(height: 20,),
              Text("What is your opinion of Fluxstore?",style: TextStyle(
                  color: Color(0xff1D1F22),
                  fontSize: 14,
                  // fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'
              ),),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/star.png"),
                  SizedBox(width: 12,),
                  Image.asset("assets/images/star.png"),
                  SizedBox(width: 12,),
                  Image.asset("assets/images/star.png"),
                  SizedBox(width: 12,),
                  Image.asset("assets/images/star.png"),
                  SizedBox(width: 12,),
                  Image.asset("assets/images/star grey.png"),
                ],
              ),
              SizedBox(height: 40,),
              Center(
                child: Container(
                  height: 270,
                  width: 310,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius:   BorderRadius.circular(20)
                  ),
                  child:  TextFormField(

                    maxLines: 10,
                    controller:feedbackController ,
                    // validator: (value){
                    //   if(value==null||value.isEmpty){
                    //     return'please enter Your Name';
                    //   }
                    // },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                      counterText: '50 characters',
                        counterStyle: TextStyle(

                          fontFamily: 'Product Sans',
                          color: Color(0xffA6ABC4),
                          fontSize: 15,

                          fontWeight: FontWeight.w300,

                        ),
                      hintMaxLines: 2,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              width: 1, color: Colors.transparent,),),

                      hintText: 'Would you like to write anything about this product?',

                        hintStyle: TextStyle(

                        fontFamily: 'Product Sans',
                          color: Color(0xffA6ABC4),
                        fontSize: 15,

                        fontWeight: FontWeight.w300,

                      )
                      // prefixIcon: Icon(Icons.person),
                    ),
                    onChanged: (value){
                      feedbackController.text=value;
                      setState(() {});
                    },
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                 // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/images/Frame photo.png"),
                  SizedBox(width: 25,),
                  Image.asset("assets/images/Frame cameraa.png"),

                ],            ),
              ),
              SizedBox(height: 35,),
              GestureDetector(
                onTap: (){
                  showAlertDialog( context);
                },
                child: Container(
                  height: 48,
                  width: 315,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xff343434)

                  ),
                  child: Center(
                    child: Text("Send feedback",style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Product Sans',
                      color: Color(0xffFFFFFF),


                    ),),
                  ),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
  showAlertDialog(BuildContext context) {

    // set up the button
    Widget doneButton = Center(
      child: TextButton(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.black,
          ),
          height: 30,
            width: 101,
            child: Center(
              child: Text("Done",style:TextStyle(
                color: Colors.white,
                fontSize: 14
              ) ,),
            )),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(

      title: Column(
          mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/Check.png"),
          SizedBox(height: 10,),
          Text("Thank you for your feedback!"
            ,style: TextStyle(
            fontSize: 16,
            color: Color(0xff43484B),
            fontFamily: 'Product Sans'
          ),),
        ],
      ),

      content: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
               Text("We appreciated your feedback."  ,style: TextStyle(
              fontSize: 14,
              color: Color(0xff6E768A),
              fontFamily: 'Product Sans',
                 fontWeight: FontWeight.w500

          ),),
              Text("We’ll use your feedback to improve"  ,style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff6E768A),
                  fontFamily: 'Product Sans',
                  fontWeight: FontWeight.w500
              ),),
              Text("your experience."  ,style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff6E768A),
                    fontFamily: 'Product Sans',
                                  fontWeight: FontWeight.w500
                    ),),
                            ],
                          )
      ),
      actions: [
        doneButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
