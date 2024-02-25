import 'package:flutter/material.dart';
import 'package:latihanresponsf/Utils.dart';
import 'DataSiswa.dart';

class TabletLayout extends StatelessWidget {
  final List<Siswa> gridItems;
  final int crossAxisCount;

  TabletLayout({required this.gridItems, this.crossAxisCount = 2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        NavigationRail(
          selectedIndex: 0,
          onDestinationSelected: (int index) {},
          labelType: NavigationRailLabelType.all,
          destinations: const <NavigationRailDestination>[
            NavigationRailDestination(
              icon: Icon(Icons.home),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.notifications),
              label: Text('Notifications'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.message),
              label: Text('Messages'),
            ),
          ],
        ),
        VerticalDivider(thickness: 1, width: 1),
        Expanded(
          child: IndexedStack(
            index: 0,
            children: <Widget>[
              GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300, // Adjust the width as needed
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              child: Text(
                                gridItems[index].nama[0],
                                style: TextStyle(fontSize: 20),
                              ),
                              backgroundColor: Colors.blue,
                            ),
                            SizedBox(height: 10),
                            textHeader(
                              gridItems[index].nama,
                              15,
                              Colors.grey,
                            ),
                            SizedBox(height: 5),
                            textHeader(
                              'Email: ${gridItems[index].email}',
                              12,
                              Colors.grey,
                            ),
                            textHeader(
                              'NIS: ${gridItems[index].nis}',
                              12,
                              Colors.green,
                            ),
                            textHeader(
                              'NISN: ${gridItems[index].nisn}',
                              12,
                              Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              Center(
                child: Text(
                  'Notifications page',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Center(
                child: Text(
                  'Messages page',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
