import 'package:flutter/material.dart';

class BasicCustomScrollView extends StatelessWidget {
  const BasicCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //Header
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('CustomScrollView Demo'),
              background: Image.network(
                "https://images.pexels.com/photos/158063/bellingrath-gardens-alabama-landscape-scenic-158063.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                fit: BoxFit.cover,
              ),
            ),
          ),
          //Body
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(childCount: 8, (
                BuildContext context,
                int index,
              ) {
                return Container(
                  color: Colors.cyan[(index % 9 + 1) * 100],
                  child: Placeholder(
                    child: Center(
                      child: Text('Grid % ${(index % 9 + 1) * 100}'),
                    ),
                  ),
                );
              }),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.0,
                // mainAxisExtent: 150.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
