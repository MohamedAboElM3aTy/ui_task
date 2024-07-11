import 'package:flutter/foundation.dart';

@immutable
class FattoAppImages {
  const FattoAppImages._();

  static String dummyImagePath(String assetName) =>
      "assets/dummy_images/$assetName";

  static const String mainImage = 'assets/images/main_image.jpg';

  static const String girlImage = 'assets/png/girl1.png';
  static const String lipStickImage = 'assets/png/lipStick.png';

  static const String starOneImage = 'assets/png/Star1.png';
  static const String starTwoImage = 'assets/png/Star2.png';
  static const String starThreeImage = 'assets/png/Star3.png';
  static const String starFourImage = 'assets/png/Star4.png';

  static const String handOneImage = 'assets/png/Hand1.png';
  static const String handTwoImage = 'assets/png/Hand2.png';
  static const String handThreeImage = 'assets/png/Hand3.png';
  static const String handFourImage = 'assets/png/Hand4.png';
}
