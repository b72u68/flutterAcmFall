import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterAcmFall/model/auth_model.dart';
import 'package:flutterAcmFall/view/screens/grocery/grocChecklistScreen.dart';
import 'package:flutterAcmFall/view/screens/event/event_home_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.teal,
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list)),
              Tab(icon: Icon(Icons.schedule)),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            ChecklistScreen(),
            EventHomeScreen(),
          ],
        ),
      ),
    );
  }
}
