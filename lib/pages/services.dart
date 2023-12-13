import 'package:flutter/material.dart';






class ServicePage extends StatelessWidget {
  
  final List<Service> services = [
    Service(
      title: 'Mobile App Development',
      description: 'We create beautiful and functional mobile applications for both Android and iOS platforms using Flutter.',
      icon: Icons.mobile_screen_share,
    ),
    Service(
      title: 'Custom UI/UX Design',
      description: 'We design intuitive user interfaces and engaging user experiences tailored to your app\'s target audience.',
      icon: Icons.design_services,
    ),
    Service(
      title: 'API Integration',
      description: 'Integrate your app with various APIs to enable features like payment gateways, social media, and more.',
      icon: Icons.link,
    ),
     Service(
      title: 'Version Control',
      description: 'We use Git and GitHub to tract and share Projects.' ,
      icon: Icons.computer_outlined,
    ),
    Service(
      title: 'Maintenance and Support',
      description: 'We provide regular maintenance, updates, and support services to keep your app running smoothly.',
      icon: Icons.settings,
    ),
     Service(
      title: 'Web App development',
      description: 'We create beautiful and functional Web applications for different platforms using Flutter.' ,
      icon: Icons.computer_outlined,
    ),
  ];

 
  // ... (your existing code)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Services'),
      ),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) => ServicePage())
            ),
            );
    //            Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => AboutPage(service: services[index]),
    //   ),
    // );
              // Handle service item tap here
            //  print('Tapped on ${services[index].title}');
            },
            child: Card(
              child: ListTile(
                leading: Icon(services[index].icon),
                title: Text(services[index].title),
                subtitle: Text(services[index].description),
              ),
            ),
          );
        },
      ),
    );
  }
}


class Service {
  final String title;
  final String description;
  final IconData icon;

  Service({required this.title, required this.description, required this.icon});
}
