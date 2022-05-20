import 'package:flutter/material.dart';
import 'package:plant_app/model/plant.dart';
import 'package:plant_app/property/recommended_card.dart';
import 'package:plant_app/screen/detail_screen.dart';
import 'package:plant_app/widgets/build_recent_card.dart';
import 'package:plant_app/widgets/build_top_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Color> colors = [Colors.teal, Colors.orange];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: const EdgeInsetsDirectional.all(30),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                buildTopSection(),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Recomended',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Top',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'Indoor',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'Outdoor',
                          style: TextStyle(color: Colors.grey),
                        )
                      ]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                scrollDirection: Axis.horizontal,
                itemCount: plants.length,
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>  DetailScreen(plant: plants[index],)));
                    },
                    child: RecommendedCard(
                        color: colors[index], plant: plants[index]),
                  );
                }),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                const Text(
                  'Recent Viewed',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: plants.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    buildRecentCard(
                        image: plants[index].image,
                        title: plants[index].title,
                        message: 'its spine doesnt grow'),
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 35,
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.qr_code_scanner_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    color: Colors.teal,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.list,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  )),
            ]),
      ),
    );
  }
}
