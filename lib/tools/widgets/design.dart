import "package:flutter/material.dart";
import "../utils/utils.dart";

class Design extends StatelessWidget {
  const Design({super.key, required this.image});
  final dynamic image;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Utils.tdWhite,
      ),
      child: CircleAvatar(radius: 25, child: Image(image: image)),
    );
  }
}
