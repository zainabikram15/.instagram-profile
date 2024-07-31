import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

List<String> images = [
  'assets/images/2.jpg',
  'assets/images/3.jpg',
  'assets/images/4.jpg',
  'assets/images/5.jpg',
  'assets/images/colorful-waves-4k-ultra-hd-2160p-5uzn16g68bsh8512.jpg',
  'assets/images/6.jpg',
  'assets/images/7.jpg',
  'assets/images/8.jpg',
  'assets/images/9.jpg',
];
List story = [
  'assets/images/2.jpg',
  'assets/images/3.jpg',
  'assets/images/4.jpg',
  'assets/images/5.jpg',
  'assets/images/colorful-waves-4k-ultra-hd-2160p-5uzn16g68bsh8512.jpg',
  'assets/images/6.jpg',
  'assets/images/7.jpg',
  'assets/images/8.jpg',
  'assets/images/9.jpg',
];
List storyname = [
  'Awais Ahmad',
  'Mohsin Ali',
  'Rana Sakhawat',
  'Usman Bhatti',
  'Abdul Razzaq qadri',
  'Saad Ali Khan',
  'Ali Hadir ',
  'Tippu Chaudhary',
  'Bisma Manzoor',
  'Zainab Ikram',
];

List backimage = [
  'assets/images/images.jpeg',
  'assets/images/10.jpg',
  'assets/images/11.jpg',
  'assets/images/12.jpg',
  'assets/images/13.jpg',
  'assets/images/14.jpg',
];

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold, color: Colors.white,
            letterSpacing: -0.5, // Instagram's title letter spacing
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.send,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: story.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.pink, Colors.yellow]),
                          borderRadius: BorderRadius.circular(42)),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(story[index]),
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: backimage.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Colors.black,
                                  border: Border.all(color: Colors.pink)),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(backimage[index]),
                              )),
                          SizedBox(width: 10),
                          Text(
                            storyname[index],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing:
                                  -0.2, // Instagram's username letter spacing
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Image.asset(images[index]),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            icon:
                                const Icon(Icons.comment, color: Colors.white),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            icon: const Icon(Icons.send, color: Colors.white),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 430,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.bookmark,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                );
                Divider();
              },
            ),
          ),
        ],
      ),
    );
  }
}
