import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [

          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            height: 120,
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'CV Sections',

                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          ListTile(
            leading: const ImageIcon(
              AssetImage('lib/assets/toga.png'),
              size: 24,
            ),
            title: const Text('Education'),
            onTap: () {
              // Action when tapped
            },
          ),
          const Divider(),

          ListTile(
            leading: const ImageIcon(
              AssetImage('lib/assets/future.png'),
              size: 24,
            ),
            title: const Text('Skills'),
            onTap: () {
              // Action when tapped
            },
          ),
          const Divider(),

          ListTile(
            leading: const ImageIcon(
              AssetImage('lib/assets/project-management2.png'),
              size: 24,
            ),
            title: const Text('Projects'),
            onTap: () {
              // Action when tapped
            },
          ),
          const Divider(),

          ListTile(
            leading: const ImageIcon(
              AssetImage('lib/assets/user.png'),
              size: 24,
            ),
            title: const Text('Experience'),
            onTap: () {
              // Action when tapped
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
