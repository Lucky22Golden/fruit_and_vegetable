class Produce {
  late int _id;
  late String _type;
  late String _name;
  late String _fcolor;
  late List<String> _vitamins;
  late List<String> _minerals;
  late int _water;
  late List<String> _continents;
  late String _hexcolor;
  late bool _fav;
  late String _image;

  Produce(
      {required int id,
      required String type,
      required String name,
      required String fcolor,
      required List<String> vitamins,
      required List<String> minerals,
      required int water,
      required List<String> continents,
      required String hexcolor,
      required bool fav,
      required String image}) {
    _id = id;
    _type = type;
    _name = name;
    _fcolor = fcolor;
    _vitamins = vitamins;
    _minerals = minerals;
    _continents = continents;
    _water = water;
    _hexcolor = hexcolor;
    _fav = fav;
    _image = image;
  }

  Produce.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _type = json['type'];
    _name = json['name'];
    _fcolor = json['color'];
    _water = json['water_percent'];
    _vitamins = json['vitamins'].cast<String>();
    _minerals = json['minerals'].cast<String>();
    _continents = json['continents'].cast<String>();
    _image = json['image'];
    _hexcolor = json['hexcolor'];
    _fav = json['favorite'];
  }

  bool getFav() {
    return _fav;
  }

  String getHex() {
    return _hexcolor;
  }

  String getImage() {
    return _image;
  }

  String getName() {
    return _name;
  }

  int getID() {
    return _id;
  }

  String getColor() {
    return _fcolor;
  }

  String getWater() {
    return "$_water%";
  }

  List<String> getVitamins() {
    return _vitamins;
  }

  List<String> getMinerals() {
    return _minerals;
  }

  List<String> getContinents() {
    return _continents;
  }

  String getType() {
    return _type[0].toUpperCase() + _type.substring(1);
  }
}
