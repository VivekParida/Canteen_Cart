class SliderModel {
  String image;
  String title;
  String description;

  // Constructor for variables
  SliderModel(
      {required this.title, required this.description, required this.image});

  void setImage(String getImage) {
    image = getImage;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDescription(String getDescription) {
    description = getDescription;
  }

  String getImage() {
    return image;
  }

  String getTitle() {
    return title;
  }

  String getDescription() {
    return description;
  }
}

// List created
List<SliderModel> getSlides() {
  List<SliderModel> slides = <SliderModel>[];
  // ignore: unnecessary_new
  SliderModel sliderModel =
      new SliderModel(image: '', description: '', title: '');

  // Item 1
  sliderModel.setImage("");
  sliderModel.setTitle("");
  sliderModel.setDescription("");
  slides.add(sliderModel);

  sliderModel = new SliderModel(image: '', description: '', title: '');

  // Item 2
  sliderModel.setImage("");
  sliderModel.setTitle("");
  sliderModel.setDescription("");
  slides.add(sliderModel);

  sliderModel = new SliderModel(image: '', description: '', title: '');

  // Item 3
  sliderModel.setImage("");
  sliderModel.setTitle("");
  sliderModel.setDescription("");
  slides.add(sliderModel);

  sliderModel = new SliderModel(image: '', description: '', title: '');
  return slides;
}
