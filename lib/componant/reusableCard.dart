import 'package:flutter/material.dart';

import '../constant.dart';

class reusableCard extends StatelessWidget {
  const reusableCard({super.key,this.image,this.text});
  final String ?image;
  final String ?text;

  @override
  Widget build(BuildContext context) {
    return    Container(
                height: 90,
                width: 65,
                margin: EdgeInsets.only(right: kdefaultPadding*0.6),
                child: Column(
                  children: [
                    Container(
                      height: 62,
                      width: 62,
                       decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage(image!),
                  fit: BoxFit.cover)
                ),
                    ),
                   const SizedBox(height: 7,),
                    Text(text!,style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.w600
                    ),)
                  ],
                )
               
              );
  }
}