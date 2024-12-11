import 'package:flutter/material.dart';
import 'package:tutorial_flutter/pages/education.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'CV Sections',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Items
            Expanded(
              child: ListView(
                children: [
                  _buildDrawerItem(
                    icon: AssetImage('lib/assets/toga.png'),
                    label: 'Education',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EducationPage()),
                      );
                    },
                  ),
                  _buildDivider(),

                ],
              ),
            ),

            // footer
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'My CV',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required AssetImage icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: ImageIcon(
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
