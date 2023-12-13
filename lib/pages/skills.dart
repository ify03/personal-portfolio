import 'package:flutter/material.dart';

class Skill {
  final String name;
  final String category;

  Skill({required this.name, required this.category});
}

class SkillsPage extends StatelessWidget {
  final List<Skill> skills = [
    Skill(name: 'Mobile App Development', category: 'Programming Languages'),   
     Skill(name: 'Web Development', category: 'Programming Languages'),

    Skill(name: 'UI/UX Design', category: 'Responsive Design'),
    Skill(name: 'Graphic Design', category: 'Design Sensibilit'),
        Skill(name: 'Continuous Learning', category: 'Evolving Technologies'),
            Skill(name: 'Enhanced Styling', category: 'Material Design and Cupertino Style'),
    Skill(name: 'Collaboration and Communication', category: 'Effective Commmunication'),
    Skill(name: ' Debugging and Problem Solving', category: 'Problem Solving'),
    Skill(name: 'Version Control Systems', category: 'Git Nd GitHub'),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
      ),
      body: ListView.builder(
        itemCount: skills.length,
        itemBuilder: (context, index) {
          Skill skill = skills[index];
          return ListTile(
            title: Text(skill.name),
            subtitle: Text(skill.category),
            leading: CircleAvatar(
              child: Text(skill.name[0]), // Display first letter of the skill as avatar
            ),
            onTap: () {
              // Handle skill item tap, e.g., navigate to a detailed skill page
            },
          );
        },
      ),
    );
  }
}

 