import 'package:flutter/material.dart';
import 'package:lab2/DetailPage.dart';
import 'package:lab2/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
        useMaterial3: true,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Student> datas = [
      Student("ก้องภพ ตาดี", "643450321-2", "images/md.jpg", "โมเดล",
          "kongpop.t@kkumail.com", "https://www.facebook.com/kongphop.tadee"),
      Student("สุธาดา เสนามงคล", "643450089-0", "images/n.jpg", "เนย",
          "suthada.s@kkumail.com", "https://www.facebook.com/hisuthada/"),
      Student(
          "กมล จันบุตรดี",
          "643450063-8",
          "images/a.jpg",
          "เอก",
          "kamol.j@kkumail.com",
          "https://www.facebook.com/profile.php?id=100008572876637"),
      Student(
          "ศรันย์ ซุ่นเส้ง",
          "643450086-6",
          "images/m.jpg",
          "มอส",
          "saran.s@kkumail.com",
          "https://www.facebook.com/profile.php?id=100012787714925"),
      Student(
          "นภัสสร ดวงจันทร์",
          "643450326-2",
          "images/c.jpg",
          "ครีม",
          "napatsorn.d@kkumail.com",
          "https://www.facebook.com/profile.php?id=100013366607167"),
      Student(
          "ชาญณรงค์ แต่งเมือง",
          "643450069-6",
          "images/j.jpg",
          "เจี๊ยบ",
          "channarong.t@kkumail.com",
          "https://www.facebook.com/jiab.channarong.10"),
      Student(
          "เจษฏา พบสมัย",
          "643450323-8",
          "images/b.jpg",
          "แบงค์",
          "jetsada.p@kkumail.com",
          "https://www.facebook.com/chetsada.phobsamai.9"),
      Student(
          "ประสิทธิชัย จันทร์สม",
          "643450079-3",
          "images/f.jpg",
          "ฟาร์",
          "prasit.j@kkumail.com",
          "https://www.facebook.com/profile.php?id=100069065683019"),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 112, 108),
        title: const Text(
          "Register",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return displayItem(context: context, student: datas[index]);
          }),
    );
  }

  Widget displayItem(
      {required BuildContext context, required Student student}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      data: student,
                    )));
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(children: [
            Hero(
              tag: student.studentid,
              child: Image(
                width: 100,
                image: AssetImage(student.image),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.name,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  student.studentid,
                  style: const TextStyle(fontSize: 15),
                )
              ],
            )
          ])),
    );
  }
}
