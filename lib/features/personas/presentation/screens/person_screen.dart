
import 'package:flutter/material.dart';
import 'package:myapp/common/widgets/widget_bottom_navigation_bar.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person'),
      ),
      body: const Center(
        child: Text("Person"),
      ),
      bottomNavigationBar: WidgetBottomNavigationBar()
    );
  }
}
