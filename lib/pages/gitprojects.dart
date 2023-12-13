// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Project {
  final String title;
  final String description;
  final String imageUrl;
  final String githubLink;

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.githubLink,
  });
}

class GitScreen extends StatelessWidget {
  final List<Project> projects = [
    Project(
      title: 'Project 1',
      description: 'A job searching App where Applicant can submit there CV in search of a Job.',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCBLQNzMiv8aqv7NfsCvVNwk-TWQ1lLt56zA&usqp=CAU',
      githubLink: 'https://github.com/ify03/flutter_job_app',
    ),
    Project(
      title: 'Project 2',
      description: 'A Shopping App where you can buy anything you need.',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_qMjcJNqci448E8S8yBrgZ2k1XMKL5R3D4A&usqp=CAU',
      githubLink: 'https://github.com/ify03/shopping-app',
    ),
    Project(
      title: 'Project 3',
      description: 'An App where you can buy and Read News.',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXxkmz8HTB6jIqMEM1Cy3ux40kVYMx6sm-jQ&usqp=CAU',
      githubLink: 'https://github.com/ify03/Flutter_newsapp',
    ),
    Project(
      title: 'Project 4',
      description: 'A Gorcery App where you can buy anything you need.',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM9R6B-B6iYjqrrPmp6o-js9ZGYnuBe5nDOg&usqp=CAU',
      githubLink: 'https://github.com/ify03/fruitapp',
    ),
  ];

   GitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return ProjectCard(
            project: projects[index],
          );
        },
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final Project project;

  // ignore: prefer_const_constructors_in_immutables
  ProjectCard({super.key, 
    required this.project,
  });

  void _launchURL(String url) async {
    if (!await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Image.network(
            project.imageUrl,
            fit: BoxFit.cover,
            height: 200.0,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  project.title,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  project.description,
                  style: const TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    _launchURL(project.githubLink);
                  },
                  child: const Text('GitHub Repository'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
