import 'package:flutter/material.dart';

class SecondAppBar extends StatelessWidget {
  const SecondAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 예제1 : 실무용 앱바
      // body: FirstAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height, // 컨텍스트는 화면 정보!!!
            leading: Icon(Icons.menu),
            title: Text("Around"),
            flexibleSpace: PageView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Image.network(
                  "https://picsum.photos/id/${index + 50}/200/300",
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ), // builder는 아이템 개수 만큼 처리를 해주는 아이
    );
  }
}