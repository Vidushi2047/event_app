import 'package:event_app/componant/reusableCard.dart';
import 'package:flutter/material.dart';

class ResuableCardList extends StatelessWidget {
  const ResuableCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
      children: [
     reusableCard(
      
      image: 'assets/images/snap1.jpg',
      text: 'Jeffery',
     ),
        reusableCard(
      image: 'assets/images/snap2.jpg',
      text: 'Jeffery',
     ),
        reusableCard(
      image: 'assets/images/snap3.jpg',
      text: 'Jeffery',
     ),
        reusableCard(
      image: 'assets/images/snap4.jpg',
      text: 'Jeffery',
     ),
      reusableCard(
      image: 'assets/images/snap5.jpg',
      text: 'Jeffery',
     ),
      reusableCard(
      image: 'assets/images/snap6.jpg',
      text: 'Jeffery',
     ),
      reusableCard(
      image: 'assets/images/snap7.jpg',
      text: 'Jeffery',
     ),
      reusableCard(
      image: 'assets/images/snap8.jpg',
      text: 'Jeffery',
     ),
      ],
    ),
    );
  }
}

