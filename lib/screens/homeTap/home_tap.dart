import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movie Name',
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: Container(),
    );
  }
}

                  
