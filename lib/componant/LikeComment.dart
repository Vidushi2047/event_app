import 'package:flutter/material.dart';

import '../constant.dart';

class LikeComment extends StatelessWidget {
  const LikeComment({
    super.key,this.like,this.comment
  });
  final String? like;
  final String? comment;

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.only(
      top: kdefaultPadding/2,
      bottom: kdefaultPadding/2
     ),
     child:  Row(
        children: [
         const Icon(Icons.favorite_border),
         const SizedBox(width: 5,),
          Text(like!),
        const  SizedBox(width: 12,),
           const Icon(Icons.comment_outlined,),
           const SizedBox(width: 5,),
          Text(comment!),
          

        ],
      ),);
  }
}
