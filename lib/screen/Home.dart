import 'package:event_app/constant.dart';
import 'package:event_app/screen/search.dart';
import 'package:flutter/material.dart';

import '../componant/LikeComment.dart';
import '../componant/ResuableCardList.dart';
import '../componant/photocollage.dart';

import '../componant/rowListTile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xffFAFAFC),
        elevation: 0,
        title:const Text('Home',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      actions: const[
        Icon(Icons.notifications,color: Colors.black,),
        SizedBox(width: 20,),
        CircleAvatar(
          backgroundColor: kRColor,
          child: Icon(Icons.add,color: Colors.white,),
        ),
        SizedBox(width: 20,)
      ],
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
      child:SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       Padding(
          padding: EdgeInsets.only(
            top: kdefaultPadding,
        bottom: kdefaultPadding),
        child:   Text('Snap from friends',style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold
          ),),),

        ResuableCardList(),

 rowListLitle(
    image:'assets/images/dog.jpg' ,
    text1: 'Rosa Aktins',
    text2: 'Lake Dhruva',
    subtext: 'Lake Druvashi',
   ),
   const PhotoCollage(
    image1: 'assets/images/snap1.jpg',
    image2: 'assets/images/snap6.jpg',
    image3: 'assets/images/snap2.jpg',
   ),
   

    const LikeComment(
    like: '31',
    comment: '44',
  ),
    

     rowListLitle(
    image:'assets/images/photo.jpg' ,
    text1: 'Souravi',
    text2: 'Lake Dhruva',
    subtext: 'Lake Druvashi',
   ),
        
    Row(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Focus Lab LLC',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500,fontSize: 15),),
          Text('Product Designier',style: TextStyle(color: Colors.blue.withOpacity(0.5)),)
        ],
      ),
      Spacer(),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue.withOpacity(0.07)
        ),
        child: Padding(padding: EdgeInsets.all(8),
        child: Icon(Icons.badge_outlined,color: Colors.blue,),)
      )

    ],),
    
 const LikeComment(
    like: '23',
    comment: '64',
  ),

  rowListLitle(
    image: 'assets/images/photo1.jpg',
    text1:'Rose Alidex' ,
   text2: 'Lake Dhruva',
    subtext: 'Lake Druvashi',

  ),
    


        ],
      ),
      )),
      bottomNavigationBar: BottomAppBar(
        color: kcolor,
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.white,),
        ),
         IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Colors.white,),
        ), IconButton(onPressed: (){}, icon: Icon(Icons.location_city,color: Colors.white,),
        ), IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Search();
      
          },));
        }, icon: Icon(Icons.search,color: Colors.white,),
        ),
        CircleAvatar(backgroundImage: AssetImage('assets/images/photo.jpg'),)
          ],
        ),
      ),
    );
  }
}

 