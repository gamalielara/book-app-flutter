import 'package:flutter/foundation.dart';

class Category{
  final String url;
  final String category;

  Category({required this.url, required this.category});
}

final List<Category> booksCategory = <Category>[
  Category(
      url: "https://i.pinimg.com/736x/10/3e/da/103edac4c4c06f64f0615ba3f1308521--fantasy-art-landscapes-fantasy-landscape.jpg",
      category: "Fantasy"
  ),
  Category(
      url: "https://img.freepik.com/free-photo/futuristic-sci-fi-empty-podium-room-with-product-presentation-3d-rendering_41470-4122.jpg",
      category: "Sci-Fi"
  ),
  Category(
      url: "https://thesecret.city/things-to-do/media/images/image2_1.2e16d0ba.fill-600x600.jpg",
      category: "Horror"
  ),
  Category(
      url: "https://statics.indozone.news/content/2022/07/08/9Dsbbjg/8-film-romance-netflix-terbaru-juli-2022-penikmat-netflix-wajib-nonton28_700.jpg",
      category: "Romance"
  ),
  Category(
      url: "https://www.learndirect.com/uploads/CIPD%20-%202a.jpg",
      category: "Nonfiction"
  ),

];