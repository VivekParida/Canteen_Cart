class SliderModel {
  final String image;
  final String title;
  final String description;

  // Constructor for variables
  SliderModel(
      {required this.title, required this.description, required this.image});
}

final List<SliderModel> slides = [
  SliderModel(
      title: "title", description: "description", image: "assets/Booking.png"),
  SliderModel(
      title: "title", description: "description", image: "assets/Offers.png"),
  SliderModel(
      title: "title", description: "description", image: "assets/Cancel.png"),
];
