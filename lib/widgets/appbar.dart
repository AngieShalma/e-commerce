import 'package:flutter/material.dart';

class appbar extends StatefulWidget {
  final String title;
  const appbar({Key? key,required this.title}) : super(key: key);

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          SizedBox(width: 55,),
          Text(widget.title,style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.none,
              color:Color(0xff121420),
              fontFamily: 'Product Sans'
          ),),

        ],
      ),
    );
  }
}
