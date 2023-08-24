import 'package:flutter/material.dart';

class profileSettingsScreen extends StatefulWidget {
   profileSettingsScreen({Key? key}) : super(key: key);

  @override
  State<profileSettingsScreen> createState() => _profileSettingsScreenState();

}

class _profileSettingsScreenState extends State<profileSettingsScreen> {
  GlobalKey<FormState> _formkey =  GlobalKey<FormState>();

  final fnameController=TextEditingController();
  final lnameController=TextEditingController();

  final phoneController=TextEditingController();

  final genderController=TextEditingController();

  final emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Colors.white,
     body: Form(
        key:_formkey ,

        child: SingleChildScrollView(
          child: Container(
            // height: 500,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                            setState(() {

                            });
                          },
                            child: Image.asset("assets/icons/Frame 361.png",width: 60,height:60,)),
                        SizedBox(width: 30,),
                        Text("Profile Setting",style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color:Color(0xff121420),
                            fontFamily: 'Product Sans'
                        ),),

                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Image.asset("assets/images/profileSettingsPicture.png",height: 118,width: 118,),
                     Positioned(
                       bottom: 3,
                        right: 2,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xff353945),
                          child:Image.asset("assets/icons/Camera Icon.png"),

                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height:20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          controller:fnameController ,
                          validator: (value){
                            if(value==null||value.isEmpty){
                              return'please enter Your Name';
                            }
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD6D6D6)),
                            ),

                          //  focusColor: Color(0xffD6D6D6),
                            //  border: OutlineInputBorder(),
                            labelText: 'First Name',
                            labelStyle: TextStyle(
                              color: Color(0xffA6ABC4), //<-- SEE HERE
                            ),
                            // prefixIcon: Icon(Icons.person),
                          ),
                          onChanged: (value){
                            fnameController.text=value;
                            setState(() {});
                          },
                        ),
                      ),
                      SizedBox(
                        width:15,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                           
                          controller:lnameController ,
                          validator: (value){
                            if(value==null||value.isEmpty){
                              return'please enter Your Name';
                            }
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD6D6D6)),
                            ),
                                   // border: OutlineInputBorder(),
                            labelText: 'Last Name',
                            labelStyle: TextStyle(
                              color: Color(0xffA6ABC4), //<-- SEE HERE
                            ),
                            // prefixIcon: Icon(Icons.person),
                          ),
                          onChanged: (value){
                            lnameController.text=value;
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller:emailController,
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return 'please enter your email';
                      }
                    },
                    onChanged: (value){
                      emailController.text=value;
                      setState(() {

                      });
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(

                      //  border: OutlineInputBorder(),
                      // border: UnderlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.red,width: 2),
                      // ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),


                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Color(0xffA6ABC4), //<-- SEE HERE
                      ),
                      //   prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          controller:genderController ,
                          validator: (value){
                            if(value==null||value.isEmpty){
                              return'please enter Your Name';
                            }
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD6D6D6)),
                            ),
                            //  border: OutlineInputBorder(),
                            labelText: 'Gender',
                            labelStyle: TextStyle(
                              color: Color(0xffA6ABC4), //<-- SEE HERE
                            ),
                            // prefixIcon: Icon(Icons.person),
                          ),
                          onChanged: (value){
                            genderController.text=value;
                            setState(() {});
                          },
                        ),
                      ),
                      SizedBox(
                        width:15,
                      ),
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          controller:phoneController ,
                          validator: (value){
                            if(value==null||value.isEmpty){
                              return'please enter Your Name';
                            }
                          },
                          keyboardType: TextInputType.name,

                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD6D6D6)),
                            ),
                            //  border: OutlineInputBorder(),
                            labelText: 'phone',
                            labelStyle: TextStyle(
                              color: Color(0xffA6ABC4), //<-- SEE HERE
                            ),
                            // prefixIcon: Icon(Icons.person),
                          ),
                          onChanged: (value){
                            phoneController.text=value;
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 110,
                  ),

           Container(
             height: 50,
             width:200,
             decoration: BoxDecoration(
               color: Color(0xff343434),
               borderRadius: BorderRadius.circular(24)
             ),
             child: Center(
               child: Text("Save Change",style: TextStyle(
                 color: Color(0xffFFFFFF),
                 fontSize: 16
               ),),
             ),
           )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
