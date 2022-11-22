import 'package:flutter/material.dart';
import 'package:multi_store_app/minor_screens/subcateg_products.dart';

class SliderBar extends StatelessWidget {
  final String sliderLabel;
  const SliderBar({
    Key? key,
    required this.sliderLabel,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.8,
      width: size.width * 0.05,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.brown.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50)),
          child: RotatedBox(
            quarterTurns: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                sliderLabel == 'beauty'
                    ? const Text('')
                    : const Text(
                        ' << ',
                        style: style,
                      ),
                Text(
                  sliderLabel.toUpperCase(),
                  style: style,
                ),
                sliderLabel == 'men'
                    ? const Text('')
                    : const Text(
                        ' >> ',
                        style: style,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const style = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: Colors.brown,
  letterSpacing: 10,
);

class SubcategModel extends StatelessWidget {
  final String mainCategName;
  final String subCategName;
  final String assetName;
  final String assetLabel;
  const SubcategModel(
      {Key? key,
      required this.assetLabel,
      required this.assetName,
      required this.mainCategName,
      required this.subCategName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubcategProducts(
                      mainCategName: mainCategName,
                      subCategName: subCategName,
                    )));
      },
      child: Column(
        children: [
          SizedBox(
            height: 65,
            width: 65,
            child: Image(
              image: AssetImage(assetName),
            ),
          ),
          Text(
            assetLabel,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}

class CategHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const CategHeaderLabel({Key? key, required this.headerLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        headerLabel,
        style: const TextStyle(
            fontSize: 24, letterSpacing: 1.5, color: Colors.black),
      ),
    );
  }
}
