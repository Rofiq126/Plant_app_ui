import 'package:flutter/material.dart';

import 'package:plant_app/model/plant.dart';

class DetailScreen extends StatelessWidget {
  final Plant plant;
  const DetailScreen({
    Key? key,
    required this.plant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(30),
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios_new),
                          onPressed: () {
                            Navigator.pop(context);
                          },
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
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      plant.title,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Category',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(plant.category,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Type',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(plant.type,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Plant',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(plant.plant,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20)),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'About',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        plant.about,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.start,
                      )
                    ]),
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  padding: const EdgeInsets.all(30),
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildCard(
                        title: 'Height',
                        data: plant.height,
                        icon: Icons.height),
                    buildCard(
                        title: 'Humidity',
                        data: plant.humadity,
                        icon: Icons.hourglass_bottom),
                    buildCard(
                        title: 'Diameter',
                        data: plant.diameter,
                        icon: Icons.rounded_corner),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: Row(children: [
                  const Text(
                    'Price: ',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '\$ ${plant.price}',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: const Text(
                        'Buy Now',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned(
            left: 150,
            top: 150,
            child: SizedBox(
              height: 300,
              child: Hero(
                tag: plant.id,
                child: Image.asset(plant.image),
              ),
            ),
          )
        ],
      )),
    );
  }

  Container buildCard({String? title, String? data, IconData? icon}) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 170,
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(
              icon,
              color: Colors.white,
            ),
            backgroundColor: Colors.amber,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                data!,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
