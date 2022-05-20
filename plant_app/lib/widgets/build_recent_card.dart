import 'package:flutter/material.dart';

Widget buildRecentCard({String? image, String? title, String? message}) {
  return Container(
    height: 90,
    width: 300,
    margin: const EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: Row(children: [
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: AssetImage(image!))),
      ),
      Expanded(
          child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              message!,
              style: const TextStyle(fontSize: 15, color: Colors.grey),
            )
          ],
        ),
      ))
    ]),
  );
}
