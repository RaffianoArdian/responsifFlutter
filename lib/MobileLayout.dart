import 'package:flutter/material.dart';
import 'package:latihanresponsf/DataSiswa.dart';
import 'package:latihanresponsf/Utils.dart';

class MobileLayout extends StatelessWidget {
  final List<Siswa> gridItems;

  MobileLayout({required this.gridItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: gridItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(gridItems[index].nama[0]), // First letter of the nama
            ),
            title: textHeader(
              gridItems[index].nama,
              15,
              Colors.grey,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textHeader(
                  'Email: ${gridItems[index].email}',
                  10,
                  Colors.grey,
                ),
                textHeader(
                  'NIS: ${gridItems[index].nis}',
                  10,
                  Colors.green,
                ),
                textHeader(
                  'NISN: ${gridItems[index].nisn}',
                  10,
                  Colors.green,
                ),
              ],
            ),
            trailing: Icon(Icons.more_vert),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}

