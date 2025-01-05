class unboardingContent {
  String image;
  String title;
  String description;
  unboardingContent(
      {required this.image, required this.title, required this.description});
}

List<unboardingContent> contents = [
  unboardingContent(
    image: "Images/screen1.png",
    title:'select from our Best Store',
    description: 'pick your product from our store \n more than 35 times',
  ),
  unboardingContent(
      image: "Images/screen2.png",
      title: 'Easy and online payment',
      description:
      
          'You can cash On delivery and \n  Card payment is available'),
  unboardingContent(
      image: "Images/screen3.png",
      title: 'Quick delivery at your doors ',
      description: 'deliver your prdduct At your position')
];
