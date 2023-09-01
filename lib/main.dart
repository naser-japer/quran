import 'package:flutter/material.dart';
import 'package:kran/class.dart';
import 'package:kran/secondpage.dart';

void main() {
  runApp(
    mainApp1(
      val1: [],
    ),
  );
}

class mainApp1 extends StatefulWidget {
  mainApp1({super.key, required this.val1});
  final List<first> val1;
  @override
  State<mainApp1> createState() => _mainApp1State();
}

class _mainApp1State extends State<mainApp1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(255, 226, 226, 5),
        body: ListView.builder(
          itemCount: pirson.length + 1, // Add 1 for the image item
          itemBuilder: (context, index) {
            if (index == 0) {
              // Display the image as the first item
              return Stack(
                children: [
                  Center(
                    child: Image.asset('image/Untitled-2-04.png'),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(70.0),
                      child: Text(
                        "القران الكريم",
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              final personIndex = index - 1;
              return ListTile(
                onTap: () {
                  if (personIndex >= 0 && personIndex < pirson.length) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => categore(
                          val2: pirson[personIndex].detal,
                        ),
                      ),
                    );
                  }
                },
                tileColor: Color.fromRGBO(255, 226, 226, 5),
                trailing: CircleAvatar(
                  backgroundImage: AssetImage(pirson[personIndex].imge),
                ),
                title: Center(child: Text(pirson[personIndex].name)),
              );
            }
          },
        ),
      ),
    );
  }
}

List<first> pirson = [
  first(name: "منصور السالمي ", imge: "image/imagw.jpg", detal: [
    second(
      image2: "image/330px-Al-Baqara.svg.png",
    ),
    second(
      image2: "image/330px-Al-Fatihah.svg.png",
    ),
    second(
      image2: "image/330px-As-Saaffat.svg.png",
    ),
    second(
      image2: "image/330px-Sad_(surah).svg.png",
    ),
    second(
      image2: "image/330px-Al-Qasas.svg.png",
    ),
    second(
      image2: "image/Al_Imran.svg.png",
    ),
  ]),
  first(name: "مشاري العفاسي", imge: "image/download.jpeg", detal: [
    second(
      image2: "image/330px-Al-Baqara.svg.png",
    ),
    second(
      image2: "image/330px-Al-Fatihah.svg.png",
    ),
    second(
      image2: "image/330px-As-Saaffat.svg.png",
    ),
    second(
      image2: "image/330px-Sad_(surah).svg.png",
    ),
    second(
      image2: "image/330px-Al-Qasas.svg.png",
    ),
    second(
      image2: "image/Al_Imran.svg.png",
    ),
  ]),
  first(
      name: "ماهر المعيقلي",
      imge: "image/270px-Maher_Al_Mueaqly.png",
      detal: [
        second(
          image2: "image/330px-Al-Baqara.svg.png",
        ),
        second(
          image2: "image/330px-Al-Fatihah.svg.png",
        ),
        second(
          image2: "image/330px-As-Saaffat.svg.png",
        ),
        second(
          image2: "image/330px-Sad_(surah).svg.png",
        ),
        second(
          image2: "image/330px-Al-Qasas.svg.png",
        ),
        second(
          image2: "image/Al_Imran.svg.png",
        ),
      ]),
  first(name: "ياسر الدوسري", imge: "image/276px-Yasser_Al-Dosari.png", detal: [
    second(
      image2: "image/330px-Al-Baqara.svg.png",
    ),
    second(
      image2: "image/330px-Al-Fatihah.svg.png",
    ),
    second(
      image2: "image/330px-As-Saaffat.svg.png",
    ),
    second(
      image2: "image/330px-Sad_(surah).svg.png",
    ),
    second(
      image2: "image/330px-Al-Qasas.svg.png",
    ),
    second(
      image2: "image/Al_Imran.svg.png",
    ),
  ]),
  first(name: "محمد اللحيدان", imge: "image/download (1).jpeg", detal: [
    second(
      image2: "image/330px-Al-Baqara.svg.png",
    ),
    second(
      image2: "image/330px-Al-Fatihah.svg.png",
    ),
    second(
      image2: "image/330px-As-Saaffat.svg.png",
    ),
    second(
      image2: "image/330px-Sad_(surah).svg.png",
    ),
    second(
      image2: "image/330px-Al-Qasas.svg.png",
    ),
    second(
      image2: "image/Al_Imran.svg.png",
    ),
  ]),
];
