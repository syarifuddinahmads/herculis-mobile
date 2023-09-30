import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    // Isi dengan widget halaman tab pertama
    Text('Halaman 1'),
    // Isi dengan widget halaman tab kedua
    Text('Halaman 2'),
    // Isi dengan widget halaman tab kedua
    Text('Halaman 3'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showOptionsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pilih Aksi'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Tambahkan logika ketika "Payment" dipilih
                Navigator.pop(context);
              },
              child: Text('Payment'),
            ),
            TextButton(
              onPressed: () {
                // Tambahkan logika ketika "Retur" dipilih
                Navigator.pop(context);
              },
              child: Text('Retur'),
            ),
            TextButton(
              onPressed: () {
                // Tambahkan logika ketika "Order" dipilih
                Navigator.pop(context);
              },
              child: Text('Order'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tab 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Tab 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Tab 3',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tampilkan dialog pilihan
          _showOptionsDialog();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
