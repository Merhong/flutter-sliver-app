import 'package:flutter/material.dart';

class FourthAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: PageView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Image.network(
            "https://picsum.photos/id/${index + 50}/200/300",
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
