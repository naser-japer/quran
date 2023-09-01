import 'package:flutter/material.dart';
import 'package:kran/class.dart';
import 'package:kran/thirdpage.dart';

class categore extends StatelessWidget {
  categore({super.key, required this.val2});
  List<second> val2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                'image/20c430252c338551f51991331087577f.jpg',
                fit: BoxFit.cover,
              ),
            ),
            // Original content
            GridView.builder(
              itemCount: val2.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 6 / 7,
                crossAxisSpacing: 20,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                return CircleAvatar(
                  backgroundImage: AssetImage(val2[index].image2),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Sound(
                            key: key,
                          );
                        },
                      ));
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
