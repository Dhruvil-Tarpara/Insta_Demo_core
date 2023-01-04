import 'package:flutter/material.dart';
import 'package:instagram/screens/story.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myinstagram(),
    ),
  );
}

class Myinstagram extends StatefulWidget {
  const Myinstagram({Key? key}) : super(key: key);

  @override
  State<Myinstagram> createState() => _MyinstagramState();
}

class _MyinstagramState extends State<Myinstagram> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "instagram",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 1,
        actions: [
          Icon(
            Icons.add_box_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: w * 0.04,
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: w * 0.05,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: h * 0.2,
              width: w,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    SizedBox(
                      width: w * 0.04,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        Spacer(),
                        InkWell(
                          onTap: (){
                            Route mystory = MaterialPageRoute(builder: (context)=> story());
                            setState((){
                              Navigator.push(context,mystory);
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 47,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 44,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/5.jpg"),
                                radius: 42,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Your story",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      width: w * 0.04,
                    ),
                    mystory(
                        images: 'images/1.jpeg',
                        text: 'man',
                        mycolor: Colors.pinkAccent),
                    SizedBox(
                      width: w * 0.04,
                    ),
                    mystory(
                        images: 'images/2.jpeg',
                        text: 'meet',
                        mycolor: Colors.pinkAccent),
                    SizedBox(
                      width: w * 0.04,
                    ),
                    mystory(
                        images: 'images/3.jpeg',
                        text: 'parthik',
                        mycolor: Colors.pinkAccent),
                    SizedBox(
                      width: w * 0.04,
                    ),
                    mystory(
                        images: 'images/4.jpg',
                        text: 'nirmal',
                        mycolor: Colors.pinkAccent),
                    SizedBox(
                      width: w * 0.04,
                    ),
                    mystory(
                        images: 'images/8.jpg',
                        text: 'Ayush',
                        mycolor: Colors.pinkAccent),
                    SizedBox(
                      width: w * 0.04,
                    ),
                    mystory(
                        images: 'images/9.jpg',
                        text: 'pratik',
                        mycolor: Colors.pinkAccent),
                    SizedBox(
                      width: w * 0.04,
                    ),
                    mystory(
                        images: 'images/10.jpeg',
                        text: 'samarth',
                        mycolor: Colors.pinkAccent),
                    SizedBox(
                      width: w * 0.04,
                    ),
                    mystory(
                        images: 'images/11.jpeg',
                        text: 'kishan',
                        mycolor: Colors.pinkAccent),
                    SizedBox(
                      width: w * 0.04,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  mypage1(
                    height: h,
                    widht: w,
                    Profilepic: "images/1.jpeg",
                    text: "man panchani",
                    image: "images/11.jpeg",
                    like: 1289,
                    com: 173,
                  ),
                  mypage1(
                    height: h,
                    widht: w,
                    Profilepic: "images/2.jpeg",
                    text: "parthik",
                    image: "images/12.jpg",
                    like: 1163,
                    com: 128,
                  ),
                  mypage1(
                      height: h,
                      widht: w,
                      Profilepic: "images/6.jpg",
                      text: "Ayush",
                      image: "images/13.jpg",
                      like: 1873,
                      com: 103,
                  ),
                  mypage1(
                      height: h,
                      widht: w,
                      Profilepic: 'images/9.jpg',
                      text: "pratik Navapara",
                      image: "images/14.jpg",
                      like: 1043,
                      com: 99,
                  ),
                  mypage1(
                      height: h,
                      widht: w,
                      Profilepic: 'images/10.jpeg',
                      text: "samarth movaliya",
                      image: "images/15.jpg",
                      like: 1299,
                      com: 132,
                  ),
                  mypage1(
                    height: h,
                    widht: w,
                    Profilepic: 'images/2.jpeg',
                    text: "meet",
                    image: "images/16.jpg",
                    like: 1032,
                    com: 101,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mystory({
    required String images,
    required String text,
    required Color mycolor,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Spacer(),
        CircleAvatar(
          backgroundColor: mycolor,
          radius: 47,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 44,
            child: CircleAvatar(
              backgroundImage: AssetImage(images),
              radius: 42,
            ),
          ),
        ),
        Spacer(),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        Spacer(),
      ],
    );
  }

  mypage1({
    required double height,
    required double widht,
    required String Profilepic,
    required String text,
    required String image,
    required int like,
    required int com,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          alignment: Alignment.center,
          height: height * 0.08,
          width: widht,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: widht * 0.03,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(Profilepic),
                    backgroundColor: Colors.green,
                    radius: 22,
                  ),
                ),
              ),
              SizedBox(
                width: widht * 0.03,
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ),
        Container(
          child: Image.asset(
            image,
            height: height * 0.4,
            width: widht,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: height * 0.16,
          width: widht,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: widht * 0.04,
                  ),
                  Icon(
                    Icons.heart_broken_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                  SizedBox(
                    width: widht * 0.04,
                  ),
                  Icon(
                    Icons.mode_comment_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                  SizedBox(
                    width: widht * 0.04,
                  ),
                  Icon(
                    Icons.send_and_archive_rounded,
                    color: Colors.black,
                    size: 28,
                  ),
                  Spacer(),
                  Icon(
                    Icons.save_alt_outlined,
                    size: 28,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: widht * 0.04,
                  ),
                ],
              ),
              Text(
                "    ${like} likes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                "     View all ${com} comments",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 16,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: widht * 0.03,
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(Profilepic),
                        backgroundColor: Colors.green,
                        radius: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: widht * 0.04,
                  ),
                  Container(
                    height: height * 0.05,
                    width: widht * 0.7,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "Add a comment...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
