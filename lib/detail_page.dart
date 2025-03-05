import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CV Zacky Keisya Akbar'),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildProfileInfo(),
            const SizedBox(height: 24),
            _buildSectionTitle('Tentang Saya'),
            _buildDescription(
              'Saya pelajar dari SMK Wikrama Bogor jurusan Software dan Game Development. Saya ingin memperoleh pengalaman kerja melalui PKL selama 6 bulan. Saya menguasai beberapa bahasa pemrograman seperti JavaScript, PHP, dan C#. Saya juga menguasai framework seperti Tailwind CSS, Bootstrap, Laravel 10, serta micro framework seperti Lumen dan database MongoDB.',
            ),
            const SizedBox(height: 24),
            _buildSectionTitle('Pendidikan'),
            _buildEducationItem(
              title: 'SMK Wikrama Bogor (2023 - 2026)',
              description: 'Jurusan Pengembangan Perangkat Lunak dan Gim. Mempersiapkan siswa untuk memiliki kemampuan dalam mengelola berbagai aspek teknologi dan bisnis.',
            ),
            const SizedBox(height: 24),
            _buildSectionTitle('Proyek'),
            _buildProjectList(),
            const SizedBox(height: 24),
            _buildSectionTitle('Skill'),
            _buildSkillList(),
            const SizedBox(height: 24),
            _buildSectionTitle('Portofolio & LinkedIn'),
            _buildProjectItem(title: 'Portofolio', description: 'https://sann-delta.vercel.app/'),
            _buildProjectItem(title: 'LinkedIn', description: 'https://www.linkedin.com/in/zackykeisyaakbar/'),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text('Kembali', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileInfo() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Zacky Keisya Akbar',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
            ),
            const SizedBox(height: 5),
            Text('SMK Wikrama Bogor - Software dan Game Development', style: TextStyle(fontSize: 16, color: Colors.black54)),
            const SizedBox(height: 5),
            Text('zackykeisyaa@gmail.com | +62 838-9141-2191', style: TextStyle(fontSize: 16, color: Colors.black54)),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
      ),
    );
  }

  Widget _buildDescription(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
    );
  }

  Widget _buildEducationItem({required String title, required String description}) {
    return _buildProjectItem(title: title, description: description);
  }

  Widget _buildProjectItem({required String title, required String description}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(fontSize: 14, color: Colors.black54, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectList() {
    List<Map<String, String>> projects = [
      {'title': 'Website E-commerce', 'description': 'Dibuat menggunakan HTML & CSS.'},
      {'title': 'Pengelolaan Data Siswa', 'description': 'Dibuat dengan PHP & Bootstrap.'},
      {'title': 'Website Kasir Pengelola Keuangan', 'description': 'Menggunakan PHP & Bootstrap.'},
      {'title': 'Website Pemesanan Tiket Karcis', 'description': 'Menggunakan PHP & Bootstrap.'},
      {'title': 'Website Operasional Apotek', 'description': 'Dibangun dengan PHP, Laravel, dan Bootstrap.'},
      {'title': 'Website Operasional Pengaduan Masyarakat', 'description': 'Dibangun dengan PHP, Laravel, dan Bootstrap.'},
      {'title': 'Website Kelola Barang di Gudang', 'description': 'Menggunakan Lumen dan API.'},
    ];
    return Column(children: projects.map((p) => _buildProjectItem(title: p['title']!, description: p['description']!)).toList());
  }

  Widget _buildSkillList() {
    List<String> skills = ['HTML', 'CSS', 'JavaScript', 'PHP', 'C#', 'Tailwind CSS', 'Bootstrap 5', 'Laravel', 'Lumen', 'MongoDB', 'ReactJS'];
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: skills.map((skill) => _buildSkillChip(skill)).toList(),
    );
  }

  Widget _buildSkillChip(String skill) {
    return Chip(label: Text(skill), backgroundColor: Colors.deepPurple.shade100);
  }
}
