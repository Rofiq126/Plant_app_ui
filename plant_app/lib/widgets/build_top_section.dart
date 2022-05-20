import 'package:flutter/material.dart';

Widget buildTopSection() {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Discover',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
            const Spacer(),
            Stack(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/564x/20/de/73/20de731550f239270016de3603d8b788.jpg'),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 19,
                    width: 19,
                    child: const Text(
                      '2',
                      style: TextStyle(color: Colors.white70),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid)),
                  ),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic)),
          ),
        )
      ],
    );
  }