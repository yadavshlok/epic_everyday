import 'dart:math';
import 'package:epic_everyday/pages/fail.dart';
import 'package:epic_everyday/pages/success.dart';
import 'package:epic_everyday/widgets/credit_card.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {

  void navigateRandomly() {
    final random = Random();
    if (random.nextBool()) {
      Get.to(() => Success());
    } else {
      Get.to(() => Fail());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CreditCardWidget()
        ],
      ),
    );
  }
}
