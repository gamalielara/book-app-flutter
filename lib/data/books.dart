class Book {
  final String src;
  final String title;
  final String author;
  final String genre;
  final int ratingStar;
  final String price;
  final String desc;

  Book({
    required this.src,
    required this.title,
    required this.author,
    required this.genre,
    required this.ratingStar,
    required this.price,
    required this.desc,
  });
}

final List<Book> fantasyBookData = [
  Book(
    src:
        "https://images.tokopedia.net/img/cache/700/VqbcmM/2021/7/20/38d82fa5-39e6-4013-9ba1-ebd9687850b2.jpg",
    title: "The Way of Kings",
    author: "Brandon Sanderson",
    genre: "Fantasy",
    ratingStar: 4,
    price: "150.000",
    desc: "Roshar is a world of stone and storms. Uncanny tempests of incredible power sweep across the rocky terrain so frequently that they have shaped ecology and civilization alike. Animals hide in shells, trees pull in branches, and grass retracts into the soilless ground. Cities are built only where the topography offers shelter. It has been centuries since the fall of the ten consecrated orders known as the Knights Radiant, but their Shardblades and Shardplate remain: mystical swords and suits of armor that transform ordinary men into near-invincible warriors. Men trade kingdoms for Shardblades. Wars were fought for them, and won by them. One such war rages on a ruined landscape called the Shattered Plains. There, Kaladin, who traded his medical apprenticeship for a spear to protect his little brother, has been reduced to slavery. In a war that makes no sense, where ten armies fight separately against a single foe, he struggles to save his men and to fathom the leaders who consider them expendable.",

  ),
  Book(
    src:
        "http://prodimage.images-bn.com/pimages/9781429959810_p0_v11_s1200x630.jpg",
    title: "The Wheel of Time",
    author: "Robert Jordan",
    genre: "Fantasy",
    ratingStar: 4,
    price: "350.000",
    desc: "The Wheel of Time turns and Ages come and pass, leaving memories that become legend. Legend fades to myth, and even myth is long forgotten when the Age that gave it birth returns again. What was, what will be, and what is, may yet fall under the Shadow. Moiraine Damodred arrives in Emond’s Field on a quest to find the one prophesized to stand against The Dark One, a malicious entity sowing the seeds of chaos and destruction. When a vicious band of half-men, half beasts invade the village seeking their master’s enemy, Moiraine persuades Rand al’Thor and his friends to leave their home and enter a larger unimaginable world filled with dangers waiting in the shadows and in the light",
  ),
  Book(
    src: "https://images-na.ssl-images-amazon.com/images/I/91-c-dz0x9L.jpg",
    title: "Clockwork Princess",
    author: "Cassandra Clare",
    genre: "Fantasy",
    ratingStar: 3,
    price: "100.000",
    desc: "Danger and betrayal, love and loss, secrets and enchantment are woven together in the breathtaking finale to the #1 New York Times bestselling Infernal Devices Trilogy, prequel to the internationally bestselling Mortal Instruments series. THE INFERNAL DEVICES WILL NEVER STOP COMING A net of shadows begins to tighten around the Shadowhunters of the London Institute. Mortmain plans to use his Infernal Devices, an army of pitiless automatons, to destroy the Shadowhunters. He needs only one last item to complete his plan: he needs Tessa Gray. Charlotte Branwell, head of the London Institute, is desperate to find Mortmain before he strikes. But when Mortmain abducts Tessa, the boys who lay equal claim to her heart, Jem and Will, will do anything to save her. For though Tessa and Jem are now engaged, Will is as much in love with her as ever.",
  ),
  Book(
    src:
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1555447414l/44767458.jpg",
    title: "Dune",
    author: "Frank Herbert",
    genre: "Fantasy",
    ratingStar: 3,
    price: "90.000",
    desc: "Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, heir to a noble family tasked with ruling an inhospitable world where the only thing of value is the “spice” melange, a drug capable of extending life and enhancing consciousness. Coveted across the known universe, melange is a prize worth killing for... When House Atreides is betrayed, the destruction of Paul’s family will set the boy on a journey toward a destiny greater than he could ever have imagined. And as he evolves into the mysterious man known as Muad’Dib, he will bring to fruition humankind’s most ancient and unattainable dream.",
  ),
  Book(
    src: "https://images-na.ssl-images-amazon.com/images/I/91tK5sU9oOL.jpg",
    title: "Six of Crows",
    author: "Leigh Bardugo",
    genre: "Fantasy",
    ratingStar: 3,
    price: "175.000",
    desc: "Ketterdam: a bustling hub of international trade where anything can be had for the right price—and no one knows that better than criminal prodigy Kaz Brekker. Kaz is offered a chance at a deadly heist that could make him rich beyond his wildest dreams. But he can’t pull it off alone. . . . A convict with a thirst for revenge A sharpshooter who can’t walk away from a wager A runaway with a privileged past A spy known as the Wraith A Heartrender using her magic to survive the slums A thief with a gift for unlikely escapes Kaz’s crew is the only thing that might stand between the world and destruction—if they don’t kill each other first.",
  ),
];
