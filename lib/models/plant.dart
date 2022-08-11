class Plant {
  final String name, genusName, category, careLevel, description, plantImage;
  final List<String> gallery;

  Plant({
    required this.name,
    required this.genusName,
    required this.category,
    required this.careLevel,
    required this.description,
    required this.plantImage,
    required this.gallery,
  });
}

var recommendedData = [
  Plant(
    name: 'Lili Paris',
    genusName: 'Chlorophytum',
    category: 'Indoor',
    careLevel: 'Easy',
    description:
        'The spider plant (Chlorophytum comosum) is considered one of the most adaptable of houseplants and the easiest to grow. This plant can grow in a wide range of conditions and suffers from few problems, other than brown tips. The spider plant is so named because of its spider-like plants, or spiderettes, which dangle down from the mother plant like spiders on a web. Available in green or variegated varieties, these spiderettes often start out as small white flowers.\n Caring for spider plants is easy. These tough plants tolerate lots of abuse, making them excellent candidates for newbie gardeners or those without a green thumb. Provide them with well-drained soil and bright, indirect light and they will flourish. Water them well but do not allow the plants to become too soggy, which can lead to root rot. In fact, spider plants prefer to dry out some between waterings. When caring for spider plants, also take into account that they enjoy cooler temperatures — around 55 to 65 F. (13-18 C.). Spider plants can also benefit from occasional pruning, cutting them back to the base.\n As daylight increases in spring, spider plants should begin producing flowers, eventually developing into babies, or spider plant spiderettes. This may not always occur, however, as only mature plants with enough stored energy will produce spiderettes. Spiderettes can be rooted in water or soil, but will generally yield more favorable results and a stronger root system when planted in soil. Ideally, the best method for rooting spider plant spiderettes is by allowing the plantlet to remain attached to the mother plant. Choose a spiderette and place it in a pot of soil near the mother plant. Keep this well watered and once it roots, you can cut it from the mother plant. Alternatively, you can cut off one of the plantlets, place it in a pot of soil, and water generously. Place the pot in a ventilated plastic bag and put this in a bright location. Once the spiderette is well rooted, remove from the bag and grow as usual.\n If you begin to notice spider plant leaves browning, there’s no need for worry. Browning of leaf tips is quite normal and will not harm the plant. This is often the result of fluoride found in water, which causes salt buildup in the soil. It usually helps to periodically leach plants by giving them a thorough watering to flush out excess salts. Be sure to allow the water to drain out and repeat as needed. It may also help to use distilled water or even rainwater on plants instead of that from the kitchen or outside spigot.',
    plantImage: 'assets/images/spider_main.png',
    gallery: [
      'assets/images/spider_one.jpeg',
      'assets/images/spider_two.jpeg',
      'assets/images/spider_three.jpeg',
      'assets/images/spider_four.jpeg',
      'assets/images/spider_five.jpeg',
      'assets/images/spider_six.jpeg',
      'assets/images/spider_seven.jpeg',
      'assets/images/spider_eight.jpeg',
    ],
  ),
  Plant(
    name: 'Sri Rezeki',
    genusName: 'Aglaonema',
    category: 'Indoor',
    careLevel: 'Easy',
    description:
        'Chinese evergreen is an herbaceous perennial in the Araceae (arum) family, native to the Philippines and northeastern Celebes and commonly grown as a houseplant. This tropical shrub grows to 1.5 feet, is erect and bushy, and resembles dumb cane (Dieffenbachia). The tendency to have only 5-8 main lateral veins distinguishes it from Dieffenbachia.'
        'It has elliptic, dark green, lance-shaped leaves that reach 4 to 8 inches long and 2 to 3 inches wide. Attractive silver-gray blotches appear on upright stems.  It blooms rarely as a houseplant in the late summer or early fall with a white spadix and greenish-white spathe. Red clusters of berries follow the blooms. '
        'The plant does well in diffuse sun or good indirect light and prefers high humidity but will tolerate dryer air. Keep the potting mix moist from spring to fall. It does not require a winter dormancy period but prefers a reduction in watering during the winter. Remove flowers and fruits to direct energy to plant growth.  It is an excellent plant for low-light, indoor locations; it can also be used outdoors as a filler plant or low hedge in warm regions. Grow it in an Asian or shade garden, in a container, beside a patio or walkway, or in a woodland setting.',
    plantImage: 'assets/images/aglaonema_main.png',
    gallery: [
      'assets/images/aglaonema_one.jpeg',
      'assets/images/aglaonema_two.jpeg',
      'assets/images/aglaonema_three.jpeg',
      'assets/images/aglaonema_four.jpeg',
      'assets/images/aglaonema_five.jpeg',
      'assets/images/aglaonema_six.jpeg',
      'assets/images/aglaonema_seven.jpeg',
      'assets/images/aglaonema_eight.jpeg',
    ],
  ),
  Plant(
    name: 'Peace Lily',
    genusName: 'Spathiphyllum',
    category: 'Indoor',
    careLevel: 'Easy',
    description:
        'Peace lilies (Spathiphyllum species) are attractive indoor foliage plants that produce showy white flowers. They are not true lilies but a member of the Araceae family, which also includes caladiums, elephant ears, anthuriums, and callas. They are one of the few foliage plants that will flower in low light. Peace lilies are easy to grow, making them a popular choice for houseplants and one of the top selections of air-purifying indoor plants. Do be aware that calcium oxalate crystals are present in the plant cells and, if consumed, can cause toxicity in pets and children. The most common side effect is burning of the mouth, throat, and tongue. Most peace lilies grow between 1 to 4 feet tall and wide, but a few cultivars may get as large as 6 feet tall and wide. Peace lilies are sturdy, easy to grow plants with glossy, dark green oval leaves that narrow to a point. The leaves rise directly from the soil. These plants also periodically produce lightly fragrant white flowers that resemble calla lilies. The long-lasting, pure white flowers will turn a pale green as they age.',
    plantImage: 'assets/images/peace_main.png',
    gallery: [
      'assets/images/peace_one.jpeg',
      'assets/images/peace_two.jpeg',
      'assets/images/peace_three.jpeg',
      'assets/images/peace_four.jpeg',
      'assets/images/peace_five.jpeg',
      'assets/images/peace_six.jpeg',
      'assets/images/peace_seven.jpeg',
      'assets/images/peace_eight.jpeg',
    ],
  ),
  Plant(
    name: 'Lidah Mertua',
    genusName: 'Sansevieria',
    category: 'Indoor',
    careLevel: 'Easy',
    description:
        'Historically, Sansevierias have been treasured in Chinese, African, Japanese and Brazilian cultures. In China, they were kept near entrances inside the home because it was believed that the eight virtues could pass through. In Africa, the plant was used to manufacture fiber, valued for its medicinal qualities, and used as a protective charm against bewitchment. The genus was named for Raimondo di Sangro, Prince of Sansevero, a faithful patron of horticulture in 18th century Italy. Its common name is derived from the wavy stripe pattern on its leaves. Not only does the snake plant have roots in history, but it is also a popular decor element for a multitude of spaces.Sansevieria are evergreen perennials that can grow anywhere from eight inches to 12 feet high. Their sword-like leaves are approximately two feet long. The foliage is stiff, broad, and upright, in a dark green color variegated with white and yellow striping. They are famous for their ability to survive in the most unsuitable growing conditions. They are also renowned for their qualities that help purify the air we breathe. Since they produce oxygen mainly at night, snake plants make for a great bedroom companion. The most commonly used species for gardening, Sansevieria trifasciata is also called mother-in-law’s tongue due to its sharply pointed leaves. Although it’s rare for these plants to bloom, you may wake up one day to find a long flower stalk covered in buds. This tends to happen when the plant is mildly stressed, but it won’t hurt your plant. Their white or cream colored flowers resemble lilies when fully open. Like some lilies, they boast a pleasing fragrance that can fill a room. Unfortunately, pests may also find the scent attractive.',
    plantImage: 'assets/images/sansevieria_main.jpeg',
    gallery: [
      'assets/images/sansevieria_one.jpeg',
      'assets/images/sansevieria_two.jpeg',
      'assets/images/sansevieria_three.jpeg',
      'assets/images/sansevieria_four.jpeg',
      'assets/images/sansevieria_five.jpeg',
      'assets/images/sansevieria_six.jpeg',
      'assets/images/sansevieria_seven.jpeg',
      'assets/images/sansevieria_eight.jpeg',
    ],
  ),
  Plant(
    name: 'Janda Bolong',
    genusName: 'Monstera',
    category: 'Indoor',
    careLevel: 'Medium',
    description:
        'As a houseplant, it needs a peaty soil-based potting mix and bright indoor light with no strong direct sun. Best in a warm and humid location. Water regularly during the growing season, allowing soils to dry some between waterings. Reduce watering from fall to late winter. Can be grown with a pole or trellis to support their climbing habit. Without support plants tend to grow horizontally.Monstera deliciosa, commonly called split-leaf philodendron or swiss cheese plant, is native to Central America. It is a climbing, evergreen perennial vine that is perhaps most noted for its large perforated leaves on thick plant stems and its long cord-like aerial roots. In its native tropical habitat, it will climb somewhat impressively to 70’ into large trees, clothing the trunks with leaves in the 1-3’ long range. Indoor plants more typically are grown in the 6-8’ range. Mature leaves of this plant are very large, glossy, deep green and distinctively cut and perforated. Juvenile leaves are small and mostly uncut. Mature plants may produce arum-like flowers with a spadix to 10” surrounded by a white spathe. Flowers give way to an edible fruit that is reminiscent in taste to pineapple-banana. Indoor plants rarely flower and fruit however. Aerial roots on the lower parts of this plant can be rooted into the soil to help nourish the plant. Aerial roots on the upper parts of the plant can be attached to a moss-like climbing pole or simply removed.The origin of the genus name is somewhat obscure, but is thought to derive from Dracontium, the name Linnaeus assigned to this group of plants. Monstera is first found in a published work in 1763 as a revision of Linnaeus but no record is given as to why that particular name was chosen. However, the practice of naming aroids after snakes, dragons, and monsters was fairly common.',
    plantImage: 'assets/images/monsterra_main.png',
    gallery: [
      'assets/images/monsterra_one.jpeg',
      'assets/images/monsterra_two.png',
      'assets/images/monsterra_three.jpeg',
      'assets/images/monsterra_four.jpeg',
      'assets/images/monsterra_five.jpeg',
      'assets/images/monsterra_six.jpeg',
      'assets/images/monsterra_seven.jpeg',
      'assets/images/monsterra_eight.jpeg',
    ],
  ),
];
var indoorData = [
  Plant(
    name: 'Paddle Plant',
    genusName: 'Kalanchoe',
    category: 'Indoor',
    careLevel: 'Easy',
    description:
        'What is a paddle plant? Also known as flapjack paddle plant (Kalanchoe thyrsiflora), this succulent kalanchoe plant has with thick, rounded, paddle-shaped leaves. The plant is also known as red pancake because the leaves frequently take on a reddish or deep pink tint during the winter. Read on for tips on growing paddle plants. '
        'Growing paddle plants outdoors is possible in USDA plant hardiness zones 10 and above, but gardeners in cooler climates can grow kalanchoe as an indoor plant. Water kalanchoe only when the soil is dry. When watering indoor plants, allow the pot to drain completely before replacing the plant on its drainage saucer. Never overwater, as kalanchoe, like all succulents, is prone to rot in soggy soil. Water kalanchoe sparingly during the winter months. Outdoors, kalanchoe plants do well in full sunlight or light shade. Indoor plants perform best in bright light. However, avoid direct light during the summer months, as too much intense light may scorch the plant. Paddle plant prefers temperatures between 60 and 85 F. (16-29 C.). Avoid temperatures below 60 F. (16 C). Outdoor plants require well-drained soil to prevent rotting. Indoor plants need a well-drained potting mix. A handful of sand is helpful, or you can use a potting mix formulated specifically for cacti and succulents. Alternatively, create your own mix by combining peat moss, compost and coarse sand. Fertilize paddle plant lightly during the growing season. Withhold fertilizer during fall and watering for both indoor and outdoor plant.',
    plantImage: 'assets/images/kalanchoe.png',
    gallery: [
      'assets/images/kalanchoe_one.jpeg',
      'assets/images/kalanchoe_two.jpeg',
      'assets/images/kalanchoe_three.jpeg',
      'assets/images/kalanchoe_four.jpeg',
      'assets/images/kalanchoe_five.jpeg',
      'assets/images/kalanchoe_six.jpeg',
      'assets/images/kalanchoe_seven.jpeg',
      'assets/images/kalanchoe_eight.jpeg',
    ],
  ),
  Plant(
    name: 'Sirih Gading',
    genusName: 'Epipremnum',
    category: 'Indoor',
    careLevel: 'Medium',
    description:
        'The Epipremnum plants are part of a sturdy ivy plant mostly seen as ornamental accents indoors. These plants are easy to care for and usually grow full and rapidly with very little extra attention. There are a number of different types of Epipremnum plants and the Astra Fund Holland BV company carries eight versions: Aureum, Marble Queen, Golden Pothos, Hanging, Mospole, Pearl and Jade, Pictus and Trebie.Most of these plants look lovely hanging in a pot while others grow up and around a stake or can drape themselves wherever you direct them. If you would like to buy Epipremnum wholesale, you will want to visit the Astra Fund Holland BV website and place your order there.This company has been around for over 20 years and is known for having the finest flowers wholesale from Holland. They purchase their plants and flowers from the Netherlands, South America, and from local growers. Their excellent customer service and great prices keep their worldwide clients coming back for more and more. The company carries fresh flowers, potted plants, outdoor plants and seedlings and bulbs. You don’t have to worry about buying things you don’t need as there is no minimum order required.',
    plantImage: 'assets/images/epipremnum_main.png',
    gallery: [
      'assets/images/epipremnum_one.jpeg',
      'assets/images/epipremnum_two.jpeg',
      'assets/images/epipremnum_three.jpeg',
      'assets/images/epipremnum_four.jpeg',
      'assets/images/epipremnum_five.jpeg',
      'assets/images/epipremnum_six.jpeg',
      'assets/images/epipremnum_seven.jpeg',
    ],
  ),
  Plant(
    name: 'Lidah Buaya',
    genusName: 'Aloe Vera',
    category: 'Indoor',
    careLevel: 'Easy',
    description:
        'Aloe vera is a herb with succulent leaves that are arranged in a rosette. The leaves are grey to green and sometimes have white spots on their surfaces. They have sharp, pinkish spines along their edges and are the source of the colourless gel found in many commercial and medicinal products. Aloe vera has yellow, tube-like flowers that cluster on a stem. The Aloe vera gel has been used traditionally on the skin to treat psoriasis, burns, and sores caused by the Herpes simplex virus. Research has shown that when taken orally, aloe gel can regulate blood glucose levels and cholesterol levels, but care should be taken when taking Aloe products.The green outer layer of Aloe vera leaves secrete a bitter, yellow fluid that has traditionally been used as a laxative. However, research has shown that this could interact negatively with other medicines and herbal remedies, so should be taken with care and avoided by children and pregnant or breastfeeding women.',
    plantImage: 'assets/images/aloe_main.png',
    gallery: [
      'assets/images/aloe_one.jpeg',
      'assets/images/aloe_two.jpeg',
      'assets/images/aloe_three.jpeg',
      'assets/images/aloe_four.jpeg',
      'assets/images/aloe_five.jpeg',
      'assets/images/aloe_six.jpeg',
      'assets/images/aloe_seven.jpeg',
      'assets/images/aloe_eight.jpeg',
    ],
  ),
  Plant(
    name: 'Cast Iron',
    genusName: 'Aspidistra',
    category: 'Indoor',
    careLevel: 'Easy',
    description:
        'Aspidistra, genus of ornamental foliage plants in the family Ruscaceae, native to eastern Asia. The only cultivated species is a houseplant commonly known as cast-iron plant (A. elatior, or A. lurida). The cast-iron plant has long, stiff, pointed evergreen leaves that are capable of withstanding temperature extremes, dust, smoke, and other harsh conditions. The solitary, bell-shaped flowers, which are usually lilac in colour but sometimes brown or green, are borne at the base of the plant. The fruits of Aspidistra are small berries.',
    plantImage: 'assets/images/cast_main.png',
    gallery: [
      'assets/images/cast_one.jpeg',
      'assets/images/cast_two.jpeg',
      'assets/images/cast_three.jpeg',
      'assets/images/cast_four.jpeg',
      'assets/images/cast_five.jpeg',
      'assets/images/cast_six.jpeg',
      'assets/images/cast_seven.jpeg',
      'assets/images/cast_eight.webp',
    ],
  ),
  Plant(
    name: 'African Violet',
    genusName: 'Saint Paulia',
    category: 'Indoor',
    careLevel: 'Easy',
    description:
        'AAfrican violet, (genus Saintpaulia), genus of six species of flowering plants in the family Gesneriaceae native to higher elevations in tropical eastern Africa. African violets are common houseplants, especially Saintpaulia ionantha, and can thrive in low light conditions and bloom throughout the year. Hundreds of horticultural varieties have been developed for their various flower colours and shapes, including half-sized miniatures.The members of Saintpaulia are small perennial herbs with thick, hairy, ovate leaves. These dark green leaves have long petioles (leaf stems) and are arranged in a basal cluster at the base of the plant. The violet-like flowers are bilaterally symmetric with five petals and can be violet, white, or pink in colour. The tiny seeds are produced in a capsule. The plants are easily propagated from leaf cuttings.',
    plantImage: 'assets/images/violet_main.png',
    gallery: [
      'assets/images/violet_one.jpeg',
      'assets/images/violet_two.jpeg',
      'assets/images/violet_three.jpeg',
      'assets/images/violet_four.jpeg',
      'assets/images/violet_five.jpeg',
      'assets/images/violet_six.webp',
      'assets/images/violet_seven.jpeg',
      'assets/images/violet_eight.webp',
    ],
  ),
];
var outdoorData = [
  Plant(
    name: 'Pakis Haji',
    genusName: 'Cycas',
    category: 'Outdoor',
    careLevel: 'Medium',
    description:
        'Cycas, genus of 115 species of palmlike cycads in the family Cycadaceae native to tropical and subtropical areas of the Old World. The leaves of sago palm (Cycas revoluta) are widely used as ceremonial “palms” and in floriculture. The pithy stems of this and other species are a source of sago, a food starch. Several species, among them the Australian nut palm (C. media) and queen sago (C. circinalis), a fern palm of the Malaysian area, bear edible seeds. A number are cultivated as houseplants and in conservatories and can be grown outdoors as ornamentals in warm climates.Members of the genus Cycas can grow as trees 12 metres (40 feet) or more in height. Their large compound leaves are dark green and circinate (uncoiling as fern leaves do) and grow in a whorl from the top of the trunk. The plants are dioecious, meaning that male and female reproductive structures are borne on separate individuals. While the pollen is produced in male cones, the seeds are borne along the margins of modified leaves, rather than in compact cones like other cycads. See also gymnosperm.',
    plantImage: 'assets/images/cycas_main.png',
    gallery: [
      'assets/images/cycas_one.jpeg',
      'assets/images/cycas_two.jpeg',
      'assets/images/cycas_three.jpeg',
      'assets/images/cycas_four.jpeg',
      'assets/images/cycas_five.jpeg',
      'assets/images/cycas_six.jpeg',
      'assets/images/cycas_seven.jpeg',
      'assets/images/cycas_eight.jpeg',
    ],
  ),
  Plant(
    name: 'Kaktus',
    genusName: 'Cactaceae',
    category: 'Outdoor',
    careLevel: 'Medium',
    description:
        'cactus, (family Cactaceae), plural cacti or cactuses, flowering plant family (order Caryophyllales) with nearly 2,000 species and 139 genera. Cacti are native through most of the length of North and South America, from British Columbia and Alberta southward; the southernmost limit of their range extends far into Chile and Argentina. Mexico has the greatest number and variety of species. The only cacti possibly native to the Old World are members of the genus Rhipsalis, occurring in East Africa, Madagascar, and Sri Lanka. Although a few cactus species inhabit tropical or subtropical areas, most live in and are well adapted to dry regions. See also list of plants in the family Cactaceae. Cacti are succulent perennial plants. Cacti generally have thick herbaceous or woody chlorophyll-containing stems. Cacti can be distinguished from other succulent plants by the presence of areoles, small cushionlike structures with trichomes (plant hairs) and, in almost all species, spines or barbed bristles (glochids). Areoles are modified branches, from which flowers, more branches, and leaves (when present) may grow.',
    plantImage: 'assets/images/cactus_main.png',
    gallery: [
      'assets/images/cactus_one.jpeg',
      'assets/images/cactus_two.jpeg',
      'assets/images/cactus_three.jpeg',
      'assets/images/cactus_four.jpeg',
      'assets/images/cactus_five.jpeg',
      'assets/images/cactus_six.jpeg',
      'assets/images/cactus_seven.jpeg',
      'assets/images/cactus_eight.jpeg',
    ],
  ),
  Plant(
    name: 'Rubbery Plant',
    genusName: 'Ficus Elastica',
    category: 'Outdoor',
    careLevel: 'Easy',
    description:
        'Rubber plants prefer bright light but are adaptable to low light. They grow best with the morning light from an east window. They do well in warm to average room temperatures. The ideal temperatures are 60 to 65 °F at night and 75 to 80 °F during the day. Avoid temperatures lower than 55° F, sudden drops in temperatures, and cold drafts.Water rubber plants thoroughly, but let the soil dry slightly to the touch between watering times. Be sure the pot has proper drainage holes. If the pot is sitting in a saucer, empty out the excess water after watering the plant. The soil mix should be a well-drained houseplant mix. Rubber plants prefer humid conditions, but tolerate the dry air common in homes.Fertilize regularly with a water-soluble houseplant fertilizer during active growth in the spring and summer. This should be done every two weeks. Plants that are in lower light should be fertilized less often.Rubber plants may grow tall and lanky indoors. You can support them with a stake or prune them in spring to rejuvenate. Propagate new plants by stem or tip cuttings or air layering. Repot in late winter or early spring if needed.Wash the leaves with water when they get dusty to keep them attractive and help your plant stay healthy.',
    plantImage: 'assets/images/rubbery_main.png',
    gallery: [
      'assets/images/rubbery_one.jpeg',
      'assets/images/rubbery_two.jpeg',
      'assets/images/rubbery_three.jpeg',
      'assets/images/rubbery_four.jpeg',
      'assets/images/rubbery_five.jpeg',
      'assets/images/rubbery_six.jpeg',
      'assets/images/rubbery_seven.jpeg',
      'assets/images/rubbery_eight.jpeg',
    ],
  ),
  Plant(
    name: 'Olive',
    genusName: 'Olea Eruopaea',
    category: 'Outdoor',
    careLevel: 'Medium',
    description:
        'olive, (Olea europaea), subtropical broad-leaved evergreen tree (family Oleaceae) and its edible fruit. The olive fruit and its oil are key elements in the cuisine of the Mediterranean and are popular outside the region.The tree’s beauty has been extolled for thousands of years. The edible olive was grown on the island of Crete about 3500 BCE. Semitic peoples apparently cultivated it as early as 3000 BCE. Olive oil was prized for anointing the body in Greece during the time of Homer, and it was an important crop of the Romans about 600 BCE. Later, olive growing spread to all the countries bordering the Mediterranean, and the tree is also planted as an ornamental in suitable climates.Olive trees bloom in late spring; small, whitish flowers are borne in loose clusters in the axils of the leaves. Flowers are of two types: perfect, containing both male and female parts, which are capable of developing into the olive fruits; and male, which contain only the pollen-producing parts. The olive is wind-pollinated. Fruit setting in the olive is often erratic. In some areas, especially where irrigation and fertilization are not practiced, bearing in alternate years is the rule. The trees may set a heavy crop one year and not even bloom the next.',
    plantImage: 'assets/images/olive_main.png',
    gallery: [
      'assets/images/olive_one.png',
      'assets/images/olive_two.jpeg',
      'assets/images/olive_three.jpeg',
      'assets/images/olive_four.jpeg',
      'assets/images/olive_five.jpeg',
      'assets/images/olive_six.webp',
      'assets/images/olive_seven.jpeg',
      'assets/images/olive_eight.jpeg',
    ],
  ),
  Plant(
    name: 'Canary Palm',
    genusName: 'Canariensis ',
    category: 'Outdoor',
    careLevel: 'Medium',
    description:
        'Phoenix canariensis (the Canary Island date palm or pineapple palm) is a species of flowering plant in the palm family Arecaceae, native to the Canary Islands. It is a relative of Phoenix dactylifera, the true date palm. It is the natural symbol of the Canary Islands, together with the canary Serinus canaria.[2] Mature P. canariensis are often used in ornamental landscaping and are collected and transplanted to their new planting location. A Canary Island date palm with 10 m (30 ft) of trunk is approximately 60 years of age.The Phoenix Canariensis is native to the Canary Islands where we extract from its sap an excellent syrup (palm honey). Also known under the name of Canary Island date palm, it is an ideal ornament in a pot inside, it recalls the seaside resorts of the Mediterranean Sea.The Canary Island date palm is a palm tree to plant in the ground in mild climates, up to 20 m high and 10 m wide. In pot, its height does not exceed 2.20 m with a maximum width of one meter. The trunks of the Canary Island date palm are extremely straight with its 60 cm diameter in adulthood and a crown made up of several pinnate leaves capable of measuring up to 5 m long and one meter wide.The flowering of the Phoenix Canariensis from June to August gives beautiful white or yellow flowers followed by large clusters of orange fruits turning red at maturity containing a seed of about 1.5 cmThe Phoenix Canariensis is a palm very resistant to drought, cold down to -10 ° C and requires good exposure to the sun. It supports acidic or alkaline soils and requires very regular watering only between May and September. The size of the dry leaves is however necessary.',
    plantImage: 'assets/images/date_main.png',
    gallery: [
      'assets/images/date_one.jpeg',
      'assets/images/date_two.jpeg',
      'assets/images/date_three.webp',
      'assets/images/date_four.webp',
      'assets/images/date_five.jpeg',
      'assets/images/date_six.webp',
      'assets/images/date_seven.jpeg',
      'assets/images/date_eigth.jpeg',
    ],
  ),
];
