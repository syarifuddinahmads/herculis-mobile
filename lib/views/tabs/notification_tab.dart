import 'package:flutter/material.dart';

class NotificationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NotificationList();
  }
}

class NotificationList extends StatelessWidget {
  // Contoh data notifikasi
  final List<NotificationItem> notifications = [
    NotificationItem('Pemberitahuan 1', 'Deskripsi pemberitahuan 1'),
    NotificationItem('Pemberitahuan 2', 'Deskripsi pemberitahuan 2'),
    NotificationItem('Pemberitahuan 3', 'Deskripsi pemberitahuan 3'),
    NotificationItem('Pemberitahuan 4', 'Deskripsi pemberitahuan 4'),
    NotificationItem('Pemberitahuan 5', 'Deskripsi pemberitahuan 5'),
    NotificationItem('Pemberitahuan 6', 'Deskripsi pemberitahuan 6'),
    NotificationItem('Pemberitahuan 1', 'Deskripsi pemberitahuan 1'),
    NotificationItem('Pemberitahuan 2', 'Deskripsi pemberitahuan 2'),
    NotificationItem('Pemberitahuan 3', 'Deskripsi pemberitahuan 3'),
    NotificationItem('Pemberitahuan 4', 'Deskripsi pemberitahuan 4'),
    NotificationItem('Pemberitahuan 5', 'Deskripsi pemberitahuan 5'),
    NotificationItem('Pemberitahuan 6', 'Deskripsi pemberitahuan 6'),
    NotificationItem('Pemberitahuan 1', 'Deskripsi pemberitahuan 1'),
    NotificationItem('Pemberitahuan 2', 'Deskripsi pemberitahuan 2'),
    NotificationItem('Pemberitahuan 3', 'Deskripsi pemberitahuan 3'),
    NotificationItem('Pemberitahuan 4', 'Deskripsi pemberitahuan 4'),
    NotificationItem('Pemberitahuan 5', 'Deskripsi pemberitahuan 5'),
    NotificationItem('Pemberitahuan 6', 'Deskripsi pemberitahuan 6'),
    // Tambahkan data notifikasi lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationCard(notification: notifications[index]);
        },
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String description;

  NotificationItem(this.title, this.description);
}

class NotificationCard extends StatelessWidget {
  final NotificationItem notification;

  NotificationCard({required this.notification});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Container(
        width: 200, // Lebar card
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              notification.title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              notification.description,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
