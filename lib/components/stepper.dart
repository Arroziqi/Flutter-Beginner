import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';

class StepperPickUp extends StatefulWidget {
  const StepperPickUp({super.key});

  @override
  State<StepperPickUp> createState() => _StepperPickUp();
}

class _StepperPickUp extends State<StepperPickUp> {
  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Order Placed",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("Your order has been placed"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xff6FD73E),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.location_on_outlined, color: Colors.white),
        )),
    StepperData(
        title: StepperText("Preparing"),
        subtitle: StepperText("Your order is being prepared"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xff6FD73E),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.location_on_outlined, color: Colors.white),
        )),
    StepperData(
        title: StepperText("On the way"),
        subtitle: StepperText(
            "Our delivery executive is on the way to deliver your item"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xff6FD73E),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.location_on_outlined, color: Colors.white),
        )),
    StepperData(
      title: StepperText("Delivered",
          textStyle: const TextStyle(
            color: Colors.grey,
          )),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Detail Perjalanan',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: AnotherStepper(
              stepperList: stepperData,
              stepperDirection: Axis.vertical,
              iconWidth: 40,
              iconHeight: 40,
              activeBarColor: Colors.green,
              inActiveBarColor: Colors.grey,
              inverted: false,
              verticalGap: 30,
              activeIndex: 1,
              barThickness: 8,
            ),
          ),
        ],
      ),
    );
  }
}
