import 'package:flutter/cupertino.dart';

class BannerImages extends StatelessWidget {
  final String image;

  const BannerImages({
    Key? key,
    required this.image,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2.2 * (height / 3),
      width: 405,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
