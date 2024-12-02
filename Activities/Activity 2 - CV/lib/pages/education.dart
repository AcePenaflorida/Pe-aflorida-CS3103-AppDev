import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education Highlights"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Education Title
            Text(
              'Education Highlights',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Elementary Education Card
            _educationCard(
              'Elementary',
              'lib/assets/future.png', // Placeholder image
              'School Name (Elementary)',
              'Graduation Year: 2010',
              'Honor Ranking: Valedictorian',
            ),

            // High School Education Card
            _educationCard(
              'High School',
              'lib/assets/future.png', // Placeholder image
              'School Name (High School)',
              'Graduation Year: 2014',
              'Honor Ranking: Salutatorian',
            ),

            // Senior High School Education Card
            _educationCard(
              'Senior High School',
              'lib/assets/future.png', // Placeholder image
              'School Name (Senior High)',
              'Graduation Year: 2016',
              'Honor Ranking: With Honors',
            ),

            // College Education Card
            _educationCard(
              'College',
              'lib/assets/future.png', // Placeholder image
              'University Name (College)',
              'Graduation Year: 2020',
              'Honor Ranking: Magna Cum Laude',
            ),
          ],
        ),
      ),
    );
  }

  Widget _educationCard(String level, String imagePath, String schoolName, String graduationYear, String honorRanking) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image placeholder for education level
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12.0),
            // Education Level
            Text(
              level,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            // School Name Placeholder
            Text(
              schoolName,
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            const SizedBox(height: 8.0),
            // Graduation Year
            Text(
              graduationYear,
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            const SizedBox(height: 8.0),
            // Honor Ranking
            Text(
              honorRanking,
              style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
