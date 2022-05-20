class Plant {
  final String category;
  final String type;
  final String plant;
  final String price;
  final String height;
  final String diameter;
  final String humadity;
  final String image;
  final String about;
  final String id;
  final String title;
  Plant({
    required this.category,
    required this.type,
    required this.plant,
    required this.price,
    required this.height,
    required this.diameter,
    required this.humadity,
    required this.image,
    required this.about,
    required this.id,
    required this.title,
  });
}

List<Plant> plants = [
  Plant(
      title: 'Peace lily',
      category: 'Indoor',
      type: 'small',
      plant: 'Cactus',
      price: '36.00',
      height: '9.2',
      diameter: '30',
      humadity: '< 27',
      image: 'assets/lily.png',
      about: "However, they huge white flower and they"
          "bloom throughout the yerar (and a vit forquently in the springtime)"
          "hits coupled with the plant's broad deep green leaves",
      id: '1'),
  Plant(
      title: 'Red rose',
      category: 'Outdoor',
      type: 'small',
      plant: 'Cactus',
      price: '40.00',
      height: '9.2',
      diameter: '30',
      humadity: '< 27',
      image: 'assets/rose.png',
      about: "However, they huge white flower and they"
          "bloom throughout the yerar (and a vit forquently in the springtime)"
          "hits coupled with the plant's broad deep green leaves",
      id: '2'),
];
