import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_box, 
                      color: Colors.white,
                      size: 30.0, 
                    ),
                    const SizedBox(width: 16.0), 
                    Text(
                      'CV Sections',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Items
            Expanded(
              child: ListView(
                children: [
                  _buildDrawerItem(
                    icon: Icons.school,
                    label: 'Education',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EducationPage()),
                      );
                    },
                  ),
                  _buildDivider(),
                  _buildDrawerItem(
                    icon: Icons.star,
                    label: 'Skills',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SkillsPage()), // Navigate to Skills page
                      );
                    },
                  ),
                  _buildDivider(),
                  _buildDrawerItem(
                    icon: Icons.code,
                    label: 'Projects',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProjectsPage()), // Navigate to Projects page
                      );
                    },
                  ),
                  _buildDivider(),
                  _buildDrawerItem(
                    icon: Icons.work,
                    label: 'Experience',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ExperiencePage()), // Navigate to Experience page
                      );
                    },
                  ),
                  _buildDivider(),
                ],
              ),
            ),

            // footer
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                'My CV',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: Colors.blueGrey,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      onTap: onTap,
    );
  }

  Widget _buildDivider() {
    return Divider(
      thickness: 1,
      indent: 16,
      endIndent: 16,
      color: Colors.grey[300],
    );
  }
}



class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Education Highlights",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _collegeCard(
              'College',
              'Batangas State University',
              'Graduation Year: TBA',
            ),

            _educationCard(
              'Senior High School',
              'Nicolites Montessori School',
              'Graduation Year: 2022',
            ),

            _educationCard(
              'High School',
              'DFLCMCFI',
              'Graduation Year: 2020',
            ),

            _educationCard(
              'Elementary',
              'Victoria Reyes',
              'Graduation Year: 2016',
            ),
          ],
        ),
      ),
    );
  }

  Widget _collegeCard(String level, String schoolName, String graduationYear) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      height: 200, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: const DecorationImage(
          image: AssetImage('lib/assets/bsu.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.black.withOpacity(0.6),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              level,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              schoolName,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              graduationYear,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _educationCard(String level, String schoolName, String graduationYear) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            level,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            schoolName,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            graduationYear,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Skills Highlights",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _skillCard(Icons.flutter_dash, 'Flutter', 'Beginner Level'),
            _skillCard(Icons.code, 'HTML, CSS, & JS', 'Amateur Level'),
            _skillCard(Icons.design_services, 'UI/UX Design', 'Intermediate Level'),
            _skillCard(Icons.language, 'Python', 'Intermediate Level'),
            _skillCard(Icons.code_outlined, 'Java', 'Intermediate Level'),
            _skillCard(Icons.coffee, 'C++ & C#', 'Intermediate Level'),
          ],
        ),
      ),
    );
  }

  Widget _skillCard(IconData icon, String skill, String description) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 40.0,
            color: Colors.blueAccent,
          ),
          const SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                skill,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Project Highlights",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _projectCard(
              Icons.business,
              'Treasury Citadel',
              'A simple banking management system using Python',
              screenWidth, screenHeight
            ),
            _projectCard(
              Icons.data_usage,
              'Data Sweep',
              'A basic dataset cleaning app using Flutter and Python',
              screenWidth, screenHeight
            ),
            _projectCard(
              Icons.account_balance,
              'Knapsack Logistics',
              'Optimizing products allocation in logistics using the Knapsack Algorithm',
              screenWidth, screenHeight
            ),
            _projectCard(
              Icons.lock,
              'Invertrix',
              'A matrix-inverse cipher using HTML, CSS, JS, and Python',
              screenWidth, screenHeight
            ),
          ],
        ),
      ),
    );
  }

  Widget _projectCard(IconData icon, String projectName, String description, double screenWidth, double screenHeight) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      width: screenWidth * 0.9, // Width is 90% of the screen width
      height: screenHeight * 0.15, // Height is 15% of the screen height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 40.0,
            color: Colors.blueAccent,
          ),
          const SizedBox(width: 16.0),
          Expanded( // This will allow text to take up available space
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              children: [
                Text(
                  projectName,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis, // For handling long project names
                  maxLines: 1,
                ),
                const SizedBox(height: 8.0),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 13,
                  ),
                  overflow: TextOverflow.ellipsis, // For handling long descriptions
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Experience Highlights",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _experienceCard('No Experience', 'So Far...'),
          ],
        ),
      ),
    );
  }

  Widget _experienceCard(String position, String description) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            position,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          const SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

