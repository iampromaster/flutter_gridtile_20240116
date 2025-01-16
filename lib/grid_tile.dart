import 'package:flutter/material.dart';

class MyGridTile extends StatelessWidget {
  const MyGridTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G R I D  T I L E"),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(
          12,
          (index) {
            return GridTile(
              header: Container(
                color: Colors.brown.shade200,
                child: Text(
                  "header $index",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              footer: Container(
                color: Colors.green.shade200,
                child: Center(
                  child: Text("footer $index",
                      style: const TextStyle(
                        fontSize: 16,
                      )),
                ),
              ),
              child: Center(
                child: Image.asset("assets/images/ins1.jpg"),
              ),
            );
          },
        ),
      ),
    );
  }
}
