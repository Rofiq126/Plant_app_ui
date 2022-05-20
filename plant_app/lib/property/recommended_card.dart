import 'package:flutter/material.dart';

import 'package:plant_app/model/plant.dart';

class RecommendedCard extends StatelessWidget {
  final Color? color;
  final Plant plant;

  const RecommendedCard({
    Key? key,
    this.color,
    required this.plant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 100,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(right: 20),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: plant.id,
            child: Image.asset(
              plant.image,
              height: 200,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            plant.category,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(
            width: 20,
          ),
          Row(
            children: [
              Text(
                plant.title,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                child: Center(
                  child: Text(
                    '\$ ${plant.price}',
                    style: TextStyle(color: color),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
