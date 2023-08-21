import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onOptionTap(int index) {
    switch (index) {
      case 0:
        // Option 1 was tapped
        break;
      case 1:
        // Option 2 was tapped
        break;
      case 2:
        // Option 3 was tapped
        break;
      case 3:
        // Option 4 was tapped
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ScaleTransition(
              scale: _animation,
              child: GestureDetector(
                onTap: () {
                  _onOptionTap(0);
                },
                child: Column(
                  children: [
                    Icon(Icons.add),
                    SizedBox(height: 10),
                    Text('Option 1'),
                  ],
                ),
              ),
            ),
            ScaleTransition(
              scale: _animation,
              child: GestureDetector(
                onTap: () {
                  _onOptionTap(1);
                },
                child: Column(
                  children: [
                    Icon(Icons.add),
                    SizedBox(height: 10),
                    Text('Option 2'),
                  ],
                ),
              ),
            ),
            ScaleTransition(
              scale: _animation,
              child: GestureDetector(
                onTap: () {
                  _onOptionTap(2);
                },
                child: Column(
                  children: [
                    Icon(Icons.add),
                    SizedBox(height: 10),
                    Text('Option 3'),
                  ],
                ),
              ),
            ),
            ScaleTransition(
              scale: _animation,
              child: GestureDetector(
                onTap: () {
                  _onOptionTap(3);
                },
                child: Column(
                  children: [
                    Icon(Icons.add),
                    SizedBox(height: 10),
                    Text('Option 4'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isDismissed) {
            _controller.forward();
          } else {
            _controller.reverse();
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
