// ignore_for_file: prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/CYF_8281.jpg'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Hello, I\'m Ifebuche Chukwu',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
' I am a driven Flutter developer committed to pushing the boundaries of innovation, delivering exceptional user experiences, and contributing positively to the advancement of technology.I am characterized by a strong work ethic, a penchant for continuous learning, and a problem-solving mindset.As a passionate Flutter developer, I thrive on creating intuitive, efficient, and visually appealing cross-platform applications. My enthusiasm lies in leveraging Flutter\'s capabilities to craft seamless user experiences and solve real-world problems through innovative mobile and web solutions.'  ,

                    textAlign: TextAlign.center,
                    ),
                  ),
                  const Divider(
                    height: 30,
                    color: Colors.grey,
                  ),
                  const Text(
                    'My Skills',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: <Widget>[
                                            SkillItem(skillName: 'UX Design', percentage: 50),

                      SkillItem(skillName: 'Graphic Design', percentage: 50),
                      SkillItem(skillName: 'Web Development', percentage: 65),
                      SkillItem(skillName: 'Project Management', percentage: 70),
                      SkillItem(
                          skillName: 'Mobile App Development', percentage: 75),
                    ],
                  ),
                  const Divider(
                    height: 30,
                    color: Colors.grey,
                  ),
                  const Text(
                    'Let\'s Connect',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocialIcon(
                          icon: FontAwesomeIcons.envelope,
                          link: 'mailto:blessingifebuche200@gmail.com'),
                      SocialIcon(
                          icon: FontAwesomeIcons.linkedin,
                          link: 'https://www.linkedin.com/in/ifebuche-chukwu-11aa83230/'),
                      
                      SocialIcon(
                          icon: FontAwesomeIcons.github,
                          link: 'https://github.com/ify03'),
                      SocialIcon(
                          icon: FontAwesomeIcons.facebook,
                          link: 'https://web.facebook.com/profile.php?id=100081047136483'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String skillName;
  final int percentage;

  SkillItem({super.key, required this.skillName, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            skillName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10),
          Text('$percentage%'),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String link;

  // ignore: use_key_in_widget_constructors
  SocialIcon({required this.icon, required this.link});

  // Private method to launch URL
  _launchURL() async {
    if (!await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: IconButton(
        icon: Icon(icon),
        onPressed: _launchURL, // Call _launchURL function when the icon is pressed
      ),
    );
  }
}
