import 'package:flutter/material.dart';
import 'student.dart';

class DetailPage extends StatelessWidget {
  final Student data;

  const DetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
        backgroundColor: Color.fromARGB(255, 175, 230, 250),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: data.studentid,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage(data.image),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(66, 10, 0, 95),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                data.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 4, 43, 148),
                ),
              ),
            ),
            Center(
              child: Text(
                data.studentid,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Divider(color: Color.fromARGB(255, 0, 147, 24)),
            const SizedBox(height: 10),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "About me",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 24, 185, 218),
                ),
              ),
              subtitle: Text(
                data.aboutMe,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Email",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(137, 0, 79, 0),
                ),
              ),
              subtitle: Text(
                data.email,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Social Media",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 207, 99, 11),
                ),
              ),
              subtitle: InkWell(
                onTap: () {},
                child: Text(
                  data.socialMediaLink,
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 0, 54, 97),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 247, 254, 255),
    );
  }
}
