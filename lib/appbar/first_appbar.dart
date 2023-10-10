import 'package:flutter/material.dart';

// 예제1 : 실무용 앱바
// body: FirstAppBar(),

class FirstAppBar extends StatelessWidget {
  const FirstAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          snap: true,
          // 살짝만 올려도 고정되지 않은 앱바가 튀어나옴
          floating: true,
          // 살짝 올리면 위의 메뉴를 살짝 보여줌
          pinned: false,
          // 고정 시킬지 여부
          title: Text(
            "AppBar2",
            style: TextStyle(color: Colors.white),
          ),
          expandedHeight: 250,
          flexibleSpace: Container(
            child: Image.network(
              "https://picsum.photos/200/300",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverAppBar(
          pinned: true,
          title: Text(
            "AppBar1",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 20,
            (context, index) => ListTile(
              leading: Icon(Icons.person),
              title: Text("$index"),
              trailing: Icon(Icons.account_balance),
            ),
          ),
        ),
      ],
    );
  }
}
