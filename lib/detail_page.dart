import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Profile Image
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/Gedung.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // About Me
            _buildSectionTitle('About Me'),
            const Text(
              'Hello! I am Zacky Keisya Akbar, a student at SMK Wikrama Bogor. '
              'I am passionate about technology, especially in front-end development and mobile app development.',
              style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
            ),
            const SizedBox(height: 20),

            // Experience
            _buildSectionTitle('Experience'),
            _buildListItem('📌 Student at SMK Wikrama Bogor'),
            _buildListItem('📌 Intern at XYZ Company (2024)'),
            _buildListItem('📌 Built multiple personal projects using Flutter and Laravel'),
            const SizedBox(height: 20),

            // Skills
            _buildSectionTitle('Skills'),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildSkillChip('Flutter'),
                _buildSkillChip('Dart'),
                _buildSkillChip('Laravel'),
                _buildSkillChip('Tailwind CSS'),
                _buildSkillChip('Bootstrap'),
                _buildSkillChip('JavaScript'),
                _buildSkillChip('UI/UX Design'),
              ],
            ),
            const SizedBox(height: 20),

            // Projects
            _buildSectionTitle('Projects'),
            _buildProjectItem(
              title: 'Rental Motor System',
              description: 'A rental system with admin and cashier roles using Laravel 10 and Tailwind CSS.',
            ),
            _buildProjectItem(
              title: 'E-commerce Website',
              description: 'A responsive e-commerce template built with Bootstrap and Tailwind CSS.',
            ),
            _buildProjectItem(
              title: 'Flutter Mobile App',
              description: 'A mobile app built with Flutter for a school project management system.',
            ),
            const SizedBox(height: 30),

            // Back Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text('Back', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Section Title Widget
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurpleAccent,
        ),
      ),
    );
  }

  // List Item Widget
  Widget _buildListItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.black54),
      ),
    );
  }

  // Skill Chip Widget
  Widget _buildSkillChip(String skill) {
    return Chip(
      label: Text(skill),
      backgroundColor: Colors.deepPurple.shade100,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
    );
  }

  // Project Item Widget
  Widget _buildProjectItem({required String title, required String description}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(fontSize: 14, color: Colors.black54, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }
}

