// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Profile',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Personal Profile'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person), text: 'Personal Info'),
                Tab(icon: Icon(Icons.school), text: 'Education'),
                Tab(icon: Icon(Icons.code), text: 'Skills'),
                Tab(icon: Icon(Icons.lightbulb), text: 'Interests'),
                Tab(icon: Icon(Icons.contact_mail), text: 'Contact'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.purple[50], //background color to Personal Info tab
                child: PersonalInfoTab(),
              ),
              Container(
                color: Colors.purple[50], //background color to Education tab
                child: EducationTab(),
              ),
              Container(
                color: Colors.purple[50], //background color to Skills tab
                child: SkillsTab(),
              ),
              Container(
                color: Colors.purple[50], //background color to Interests tab
                child: InterestsTab(),
              ),
              Container(
                color: Colors.purple[50], //background color to Contact tab
                child: ContactTab(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// personal_info_tab.dart
class PersonalInfoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CircleAvatar(   
            radius: 50,
            backgroundImage: AssetImage('assets/sanchez.jpg'),
          ),
          SizedBox(height: 16),
          Text(
            'Ma. Catherine C. Sanchez',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Age: 22',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Hello! I am Ma. Catherine Sanchez, currently pursuing a Bachelor of Science in Information Technology at Batngas State University. Beyond my studies, I have a passion for a few things: indulging in delicious food, catching up on sleep, cherishing cats, enjoying a wide range of music genres, and diving into thought-provoking documentary videos.',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// education_tab.dart
class EducationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Bachelor of Science in Information Technology'),
            subtitle: Text('Batangas State University, 2024 - present'),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Senior High School'),
            subtitle: Text('Tinga Sorosoro Integrated School, 2020-2021'),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Junior High School '),
            subtitle: Text('Tinga Sorosoro Integtared School, 2018-2019 '),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Elementary'),
            subtitle: Text('Batangas City East Elementaray School, 2014-2015'),
          ),
        ],
      ),
    );
  }
}

// skills_tab.dart
class SkillsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.build), 
            title: Text('Technical Skills:'),
            subtitle: Text('HTML, CSS'),
          ),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Non-Technical Skills:'),
            subtitle: Text('Emotional intelligence, Honesty, Trustworthiness'),
          ),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Certifications:'),
            subtitle: Text('CSS Work Immersion'),
          ),
        ],
      ),
    );
  }
}

// interests_tab.dart
class InterestsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.interests),
            title: Text('Professional Interests:'),
            subtitle: Text('Art and Culture, '),
          ),
          ListTile(
            leading: Icon(Icons.interests),
            title: Text('Specialization:'),
            subtitle: Text('Information Technology'),
          ),
          ListTile(
            leading: Icon(Icons.interests),
            title: Text('Research Areas:'),
            subtitle: Text('Veterinary, Cybersecurity, Psychology'),
          ),
        ],
      ),
    );
  }
}

class ContactTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.email), 
            title: Text('Email:'),
            subtitle: Text('21-06397@g.batstate-u.edu.ph'),
          ),
          ListTile(
            leading: Icon(Icons.phone), 
            title: Text('Phone:'),
            subtitle: Text('09983142110'),
          ),
          ListTile(
            leading: Icon(Icons.link), 
            title: Text('Social Media:'),
            subtitle: Text('Github: Github.com/ma.catherinecadano@gmail.com'),
          ),
        ],
      ),
    );
  }
}