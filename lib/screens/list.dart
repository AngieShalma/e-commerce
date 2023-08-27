// import 'package:flutter/material.dart';
//
// class list extends StatefulWidget {
//   const list({Key? key}) : super(key: key);
//
//   @override
//   State<list> createState() => _listState();
// }
//
// class _listState extends State<list> {
//   List list=['first','second','third','fourth'];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: ListView.separated(
//         itemCount: list.length,
//         itemBuilder: (context,index)=>  Row(
//           children: [
//             Column(
//               children: [
//                 (index==0) ?Container():GestureDetector(
//                   onTap: (){
//                     setState(() {
//                       String temp=list[index];
//                       list[index] = list[index-1];
//                       list[index-1] = temp;
//                     });
//                   },
//                      child: Icon(Icons.arrow_drop_up_outlined,size: 40,)),
//                 (index==list.length-1)?Container():GestureDetector(
//                   onTap: (){
//                     setState(() {
//                       String temp=list[index];
//                       list[index] = list[index+1];
//                       list[index+1] = temp;
//                     });
//                   },
//                     child: Icon(Icons.arrow_drop_down_outlined,size: 40,)),
//
//               ],
//             ),
//             SizedBox(width: 15,),
//             Text(list[index],style: TextStyle(
//               decoration: TextDecoration.none,
//               color: Colors.black,
//
//             ),),
//             SizedBox(width: 25,),
//             Container(
//               height: 50,
//               width: 50,
//
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Center(
//                 child: Text("${index}",style: TextStyle(
//                   decoration: TextDecoration.none,
//                   color: Colors.black,
//
//                 ),),
//               ),
//             )
//
//           ],
//         ),
//         separatorBuilder:(context,index)=>  SizedBox(height: 10,),
//
//
//       ),
//     );
//   }
// }
