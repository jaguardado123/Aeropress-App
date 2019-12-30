import 'package:flutter/material.dart';
import 'recipe.dart';
import 'countdown.dart';

class TimerPage extends StatefulWidget {
  CoffeeRecipe recipe;
  TimerPage(this.recipe);

  @override
  _TimerPage createState() => _TimerPage();
}

class _TimerPage extends State<TimerPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimerScreen(widget.recipe),
    );
  }
}