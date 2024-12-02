import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        // Profile Image
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 0),
          height: 170,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset(
                'lib/assets/formal_pic.jpg',
                fit: BoxFit.cover,
                width: 170,
                height: 170,
              ),
            ),
          ),
        ),

        // Info Section
        Center(
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              const Text(
                'Ace Peñaflorida',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8.0),
              Text(
                '+63 991 939 4735',
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
              const SizedBox(height: 8.0),
              Text(
                'ace.g.penaflorida@gmail.com',
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
            ],
          ),
        ),

        // Project Highlights Section
        const SizedBox(height: 40.0),
        Text(
          'Project Highlights',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16.0),

        // First Project Card
        _projectCard(
          'Project Title 1',
          'This is a brief description of the first project. It highlights the main features, technologies used, and the impact of the project.',
        ),

        // Second Project Card
        _projectCard(
          'Project Title 2',
          'This is a brief description of the second project. It highlights the main features, technologies used, and the impact of the project.',
        ),

        // Third Project Card
        _projectCard(
          'Project Title 3',
          'This is a brief description of the third project. It highlights the main features, technologies used, and the impact of the project.',
        ),
      ],
    );
  }

  Widget _projectCard(String title, String description) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Project Image Placeholder
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
            child: Center(
              child: Icon(
                Icons.image,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Project Title
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                // Project Description
                Text(
                  description,
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                ),
                const SizedBox(height: 16.0),
                // Project Link
                InkWell(
                  onTap: () {
                    // Handle the project link click
                    print("Project link tapped!");
                  },
                  child: Text(
                    'View Project',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
