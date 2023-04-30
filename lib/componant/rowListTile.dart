import 'package:flutter/material.dart';

import '../constant.dart';

class rowListLitle extends StatelessWidget {
  const rowListLitle({super.key,this.image,this.subtext,this.text1,this.text2});

final String ?image;
final String ?text1;
final String ?text2;
final String ?subtext;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(top: kdefaultPadding,
    bottom: kdefaultPadding),
    child:    Row(children: [
        CircleAvatar(
               backgroundImage: AssetImage(image!),
              
             ),
             SizedBox(width: 10,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 RichText(text: TextSpan(
                   children: [
                     TextSpan(
                       text:text1!,style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold
          ), 
          
                     ),
                     WidgetSpan(child: SizedBox(width: 5,)),
                     TextSpan(
                       text: text2,style: TextStyle(
                         color: Colors.grey
                       )
                     )
                   ]
                 )
                 ),
              Text(subtext!,style: TextStyle(
                   color: Colors.black54
                 ),)
               ],
             ),
             Spacer(),
             Icon(Icons.more_horiz,color: Colors.black,)

       ],),
);
  }
}

