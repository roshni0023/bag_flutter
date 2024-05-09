
class Bag {
  final int Id;
  final int price;
  final String size;
  final double rating;
  final String category;
  final String Name;
  final String image;
  bool isFavorated;
  final String decription;
  bool isSelected;

 Bag(
      {required this.Id,
        required this.price,
        required this.category,
        required this.Name,
        required this.size,
        required this.rating,
        required this.image,
        required this.isFavorated,
        required this.decription,
        required this.isSelected});

  //List of Plants data
  static List<Bag> home = [
    Bag(
        Id: 1,
        price: 11,
        category: 'Outdoor',
        Name: 'Philodendron',
        size: 'Medium',
        rating: 4.8,
        image: 'assets/image/blackbag.png',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Bag(
        Id: 2,
        price: 18,
        category: 'Indoor',
        Name: 'Beach Daisy',
        size: 'Large',
        rating: 4.7,
        image: 'assets/image/greybag.png',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Bag(
        Id: 3,
        price: 30,
        category: 'Outdoor',
        Name: 'Big Bluestem',
        size: 'Small',
        rating: 4.5,
        image: 'assets/image/pinkbag.png',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Bag(
        Id: 4,
        price: 24,
        category: 'Recommended',
        Name: 'Big Bluestem',
        size: 'Large',
        rating: 4.1,
        image: 'assets/image/whitebag.png',
        isFavorated: true,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),

  ];

  //Get the favorated items
  static List<Bag> getFavoritedPlants(){
    List<Bag> _travelList = Bag.home;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Bag> addedToCartPlants(){
    List<Bag> _selectedPlants = Bag.home;
    return _selectedPlants.where((element) => element.isSelected == true).toList();
  }
}
