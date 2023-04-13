import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            // child: Text(
            //   'Colors Menu',
            //   style: TextStyle(color: Colors.white, fontSize: 25),
            // ),
            child: Container(
              height: 100,
              child: const Center(
                child: Text(
                  'Colors Menu',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: ListTile(
              leading: Icon(Icons.format_paint),
              title: Text('Green'),
              onTap: () => {},
            ),
          ),
          Container(
            color: Colors.red,
            child: ListTile(
              leading: Icon(Icons.format_paint),
              title: Text('Red'),
              onTap: () => {},
            ),
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.format_paint),
              title: Text('Blue'),
              onTap: () => {},
            ),
          ),
        ],
      ),
    );
  }
}
