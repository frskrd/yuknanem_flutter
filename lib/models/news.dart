class News {
  final String title, date, userImage, userName, newsImage, description;

  News(
      {required this.title,
      required this.date,
      required this.userImage,
      required this.userName,
      required this.description,
      required this.newsImage});
}

var newsData = [
  News(
    title: 'Gardening For Beginners: How to Plant',
    date: 'Friday, 21 January 2022',
    description:
        'Before choosing plants for your garden, it’s important to check what type of soil you have. Different plants suit different soils, and you may need to improve your soil before you start planting. First check the consistency of the soil – is it sticky and muddy (clay), or does it fall easily through your fingers (sandy)? Somewhere between the two is ideal – this type of soil is often referred to as friable or having a fine tilth. It means that young roots will spread easily.If your soil is heavy clay, it will be hard to dig and you will need to add plenty of well rotted manure or compost to improve the structure. If your soil is sandy or chalky, you will also need to add organic matter to improve fertility. You should also check the pH of your soil. Most plants require a neutral to acid pH of around 6, but some require higher levels of acidity and these are often known as ericaceous plants. It’s hard to change the pH of your soil, but you can tweak it by adding acid composts, or you could create an acid raised bed or container. The most important thing to remember about soil is to choose plants that will suit the growing conditions in your plot – it’s easier than trying to change the soil.',
    userName: 'Marvin Bob',
    userImage: 'assets/images/man_one.jpeg',
    newsImage: 'assets/images/article_one.jpeg',
  ),
  News(
    title: 'How to Plant any Outdoor Plant',
    date: 'Thursday, 4 February 2022',
    description:
        'We’re often asked the correct way to plant. The following steps will help you successfully plant annuals, perennials, shrubs, vines and trees!Determine if the location of your planting is in full sun, shade, morning sun only or afternoon sun only. The aspect of light will dictate which plants are best suited. Providing a plant with its preferred light requirements will eliminate 50% of any potential insect and diseases problems.If multiple, smaller plants are to be installed, the entire planting area should first be covered with the appropriate soil amendment (determine the coverage/area from the back of the bag). This way, the native soil and additive can be completely mixed as holes are dug. For larger plants, it is easiest to add the amendment to the soil surface (general rule of thumb is amount of amendment needed is equal to the size of the plant container times 2). Again, the native soil and additive will be well mixed as the hole is dug. If water holding granules will be used, prepare them according to the directions so they will be ready to use when needed.Dig holes as deep as the container and twice as wide. In heavier, clay soils, be sure to scour the sides of the hole, creating small gashes. Do not leave holes with slick, impenetrable sides. Holes for 1 gallon size and up should be filled with water prior to planting to ensure water is in the root zone. This practice will also let you know how quickly your soil drains, giving insight into how often you may need to irrigate in the future. You will need to water more in fast draining, sandy/loamy soils and less in clay soils.Put a small mound of the mixed earth at the bottom of the drained hole and add a pre-plant fertilizer according to the directions. These pre-plant fertilizers contain beneficial mycorrhizae and humic acids which work to create a “nutrient web” around the plant’s roots.Remove the plant from its container by turning the pot over and gently tapping the bottom of the pot or squeezing its sides. Larger containers can be turned on their sides and the plant gently shook/slid out. Larger plants can sometimes “stick”, so pushing down on the sides of the container in a couple places will often set the plant loose. Do not grasp the plant by its stem or top and pull upward to remove from a container as this could separate the plant from its roots.This next step is critical to encourage the new plant’s roots to seek a good hold in the ground. It is necessary to “rough up” the rootball either by gently tearing the sides to form a “fuzzy” ball of soil and root or scoring the sides with a tool such as a transplanter or root/sod knife to break up the rootball into a more amorphous shape. Circling roots at the bottom of the ball should be pulled to straighten them. Woody shrubs and trees sometimes have roots that are seen to circle the rootball. These need to be pulled at to straighten them. This process may seem detrimental but in fact greatly stimulates new root production. Breaking up the rootball will also improve future irrigation fully entering and wetting the root zone. There are a few plants that this process should not be used, most notably Bougainvillea and Daphne.Set the prepared plant in the potting hole on the small mound of soil you added earlier. Spread the roots out and over the mound. If you are adding moisture holding granules, incorporate them according to the instructions now. Fill the hole with the mixed soil ensuring that the soil fills in around the roots fully. The plant should sit slightly higher than the hole to allow for settling when watered. A small levee can be created around larger plants with remaining soil from digging the hole to act as a water basin.Water the plant thoroughly, starting from the outside and working in towards the center of the plant. Once the water has percolated into the soil, water again. Check the soil every other day or so for the first couple weeks to ensure the soil closest to the plant is not dry. The soil may be damp on the outward edge of the hole but drying out faster where the roots are located at the center of the hole.',
    userName: 'Grohl Fisher',
    userImage: 'assets/images/man_two.jpeg',
    newsImage: 'assets/images/article_two.jpeg',
  ),
];
