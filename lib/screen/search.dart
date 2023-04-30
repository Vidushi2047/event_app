import 'package:event_app/componant/LikeComment.dart';
import 'package:event_app/componant/photocollage.dart';
import 'package:event_app/componant/rowListTile.dart';
import 'package:event_app/constant.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kcolor,
        elevation: 0,
        leading:const Icon(Icons.search),
        title: const Text('Search Page'),
        actions: const[
          Padding(
            padding: EdgeInsets.only(right: 7,top:14),
            child: Text('menu',style: TextStyle(fontSize: 17),),
          ),
          Icon(Icons.menu)
          ,SizedBox(width: 20,)
        ]
        
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Padding(padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          const Padding(padding: EdgeInsets.only(bottom: kdefaultPadding,top: kdefaultPadding),
            child:    Text('Recent Search',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),),
            const Row(
              children: [
               Icon(Icons.search),
               SizedBox(width: kdefaultPadding,),
               Text('Sourav Chaturvadey',style: TextStyle(fontWeight: FontWeight.w500),)
              ],
            ),
          const SizedBox(
              height: kdefaultPadding,
            ),
             const Row(
              children: [
               Icon(Icons.search),
               SizedBox(width: kdefaultPadding,),
               Text('Subhangi Chaturvadey',style: TextStyle(fontWeight: FontWeight.w500),)
              ],
            ),

            const Padding(padding: EdgeInsets.only(bottom: kdefaultPadding/2,top: kdefaultPadding),
            child:    Text('People you may know',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),
            ),
            ),

           Padding(padding:  const EdgeInsets.only(top: kdefaultPadding/2,
    bottom: kdefaultPadding/2),
    child:    Row(children: [
     const   CircleAvatar(
               backgroundImage:AssetImage('assets/images/dog.jpg'),
              
             ),
           const  SizedBox(width: 10,),
             const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                       'Denny Doglas',style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold
          ), 
          
                     ),
              
              Text('100 mutual Friends',style: TextStyle(
                   color: Colors.black54
                 ),)
               ],
             ),
           const  Spacer(),
           Container(
            padding: const EdgeInsets.only(top:4,bottom: 4,left: 8,right: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kRColor,
            ),
          child: const Text('more',style: TextStyle(
            color: Colors.white,fontSize: 15
          ),),
           )

       ],),
       
),
         const  Text('Post',style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16
           ),),

            const  rowListLitle(
    image:'assets/images/mp.jpg' ,
    text1: 'Rose Farnatics',
    subtext: 'Lake monkato',


   ),

   Container(height: 160,
   width: double.infinity,
   decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    image:const DecorationImage(
      image: AssetImage('assets/images/m1.jpg'),
      fit: BoxFit.cover),
    
   ),

   ),
   const LikeComment(
    like: '35',
    comment: '64',
   ),
   const  rowListLitle(
    image:'assets/images/kashi3.jpg' ,
    text1: 'Rose Farnatics',
    subtext: 'Lake monkato',
   ),

   const PhotoCollage(
    image1: 'assets/images/kashi1.jpg',
    image2: 'assets/images/kashi2.jpg',
    image3: 'assets/images/kashi3.jpg',
   ),
   const LikeComment(
    like: '84',
    comment: '89',
   ),

  const  rowListLitle(
    image:'assets/images/photo.jpg' ,
    text1: 'Rose Farnatics',
    subtext: 'Lake monkato',


   ),

   Container(height: 160,
   width: double.infinity,
   decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    image:const DecorationImage(
      image: AssetImage('assets/images/snap3.jpg'),
      fit: BoxFit.cover),
    
   ),

   ),
   const LikeComment(
    like: '35',
    comment: '64',
   ),
   const  rowListLitle(
    image:'assets/images/photo1.jpg' ,
    text1: 'Rose Farnatics',
    subtext: 'Lake monkato',
   ),

   const PhotoCollage(
    image1: 'assets/images/photo1.jpg',
    image2: 'assets/images/snap5.jpg',
    image3: 'assets/images/snap4.jpg',
   ),
   const LikeComment(
    like: '84',
    comment: '89',
   ),
   

            ],
          ),),
      )
    );
  }
}