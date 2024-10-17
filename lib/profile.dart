import 'package:flutter/material.dart';
import 'page.dart';

class Home extends StatelessWidget {
  final String name;
  final String school;
  final String skill;
  final String description;

  const Home({
    Key? key,
    required this.name,
    required this.school,
    required this.skill,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromRGBO(255, 255, 255, 0.712),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('assets/images/profileee.jpg'),
                      ),
                      Text(
                        name,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        school,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        skill,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        description,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()), // Navigate to Page2
                          );
                        },
                        child: Text('See More'),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
