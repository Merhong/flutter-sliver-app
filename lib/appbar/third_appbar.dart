import 'package:flutter/material.dart';

class ThirdAppBar extends StatelessWidget {
  const ThirdAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://picsum.photos/id/${index + 50}/200/300"),
                fit: BoxFit.cover,
              ),
            ),
            // 전체를 컨테이너로 잡아놓고 그 이후에 Scaffold로 구현
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                title: Text("Around"),
                leading: Icon(Icons.menu),
              ),
              body: Center(
                child: Text("Page $index", style: TextStyle(fontSize: 50),),
              ),
            ),
          );
        });
  }
}