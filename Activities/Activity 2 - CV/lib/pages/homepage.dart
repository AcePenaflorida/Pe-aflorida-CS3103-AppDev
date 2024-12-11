import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _selectedImagePath;
  bool _isStarred = false; 
  int followersCount = 5; 
  double goalProgress = 0.03; 

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedImagePath = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 20.0),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 8.0,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Center(
                    child: Stack(
                      children: [
                        ClipOval(
                          child: _selectedImagePath != null
                              ? Image.file(
                                  File(_selectedImagePath!),
                                  width: 120,
                                  height: 120,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset(
                                  'lib/assets/formal_pic.jpg',
                                  width: 120,
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: _pickImage,
                            child: CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 20,
                              child: const Icon(Icons.camera_alt, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Ace Peñaflorida',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1f1f1f),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Software Developer',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF696e82),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStat('Projects', '6'),
                      _buildStat('Followers', '$followersCount'),
                      _buildStat('Rating', '8.9'),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  // Goal Section Start
                  _buildGoalSection(),
                  // Goal Section End
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          _showContactDialog(context); // Show contact info when clicked
                        },
                        icon: const Icon(Icons.chat),
                        label: const Text('Contacts'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(45, 120, 255, 0.9),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12.0),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isStarred = !_isStarred;
                          });
                        },
                        child: Text(_isStarred ? 'Starred' : 'Star'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _isStarred ? Colors.white : const Color.fromRGBO(45, 120, 255, 1),
                          foregroundColor: _isStarred ? Colors.blue : Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40.0),
          const Text(
            'Credited Projects',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 91, 89, 89),
            ),
          ),
          const SizedBox(height: 16.0),
          _projectHighlight(
            title: 'Invertrix Cipher',
            description: 'A Python-based web app encryption tool that encrypts messages using matrix-based cipher.',
            color: const Color(0xFFf2f4ff),
            imagePath: 'lib/assets/github.png',
          ),
          _projectHighlight(
            title: 'Data Sweep',
            description: 'Dataset cleaning app for efficient data preprocessing, designed to enhance data quality and readiness for analysis.',
            color: const Color(0xFFf2f4ff),
            imagePath: 'lib/assets/github.png',
          ),
          _projectHighlight(
            title: 'Knapsack Logistics',
            description: 'Optimizing product allocation decisions within dynamic logistics environments characterized by weight limits.',
            color: const Color(0xFFf2f4ff),
            imagePath: 'lib/assets/github.png',
          ),
        ],
      ),
    );
  }

  Widget _buildGoalSection() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1.0),
      ),
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Professional Goal',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1f1f1f),
                ),
              ),
            ),

            const SizedBox(height: 8.0),
            const Text(
              'Achieve a senior software developer position and contribute to cutting-edge projects in the tech industry.',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF696e82),
              ),
            ),
            const SizedBox(height: 16.0),
            LinearProgressIndicator(
              value: goalProgress,
              backgroundColor: Colors.grey[200],
              color: Colors.lightBlueAccent,
            ),
            const SizedBox(height: 8.0),
            Text(
              '${(goalProgress * 100).toInt()}% Completed',
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF696e82),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _projectHighlight({
    required String title,
    required String description,
    required Color color,
    required String imagePath,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: ClipOval(
              child: Image.asset(
                imagePath,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1f1f1f),
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF696e82),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1f1f1f),
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF696e82),
          ),
        ),
      ],
    );
  }

  // Method to show contact dialog
  void _showContactDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Contact Info',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Email: ace@example.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF696e82),
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Phone: +1234567890',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF696e82),
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: const Text('Close'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

void main() {
  runApp(const MaterialApp(home: HomePage()));
}
