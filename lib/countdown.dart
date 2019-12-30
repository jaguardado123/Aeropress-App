import 'dart:math';
import 'recipe.dart';
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  CoffeeRecipe recipe;

  TimerScreen(this.recipe);

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> with TickerProviderStateMixin {
  AnimationController animationController;
  int current_step=0;
  int total_steps=0;
  bool finished;

  String get timerString {
    Duration duration =
        animationController.duration * animationController.value;
    return '${(duration.inSeconds)}';
  }

  @override
  void initState() {
    super.initState();

    current_step = 0;
    total_steps =widget.recipe.steps.length;
    finished = false;

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
        animationController.reverse(
        from: animationController.value == 0.0
            ? 1.0
            : animationController.value);
  }

  bool timerFinished(){
    return animationController.value == 0;
  }

  bool onLastStep(){
    return current_step == total_steps - 1;
  }

  bool finishedAllSteps(){
    return timerFinished() && onLastStep();
  }

  void restartTimer(){
    animationController.reverse(
    from: animationController.value == 0.0
        ? 1.0
        : animationController.value);
  }

  @override
  Widget build(BuildContext context) {
    print("redraw");

    return AnimatedBuilder(
                          animation: animationController,
                          builder: (BuildContext context, Widget child) {
                                if(finishedAllSteps()){
                                  return Text("Done");
                                }else{
                                  if(timerFinished() && !onLastStep()){
                                    current_step+=1;
                                    restartTimer();
                                  }
                                    
                                  return CurrentStepScreen(widget.recipe.steps[current_step], widget.recipe, current_step, timerString);

                                }
                          },
                        );
  }
}

class CurrentStepScreen extends StatelessWidget {
  CoffeeRecipe allSteps;
  RecipeStep step;
  String timerString;
  int current_step;

  CurrentStepScreen(this.step, this.allSteps, this.current_step, this.timerString);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.black87, child:
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: FractionalOffset.center,
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: FractionalOffset.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              timerString,
                              style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 120),
                              //style: Theme.of(context).textTheme.display4,
                            ),
                            Text(
                              step.text,
                              style: TextStyle(color: Colors.white, fontSize: 36,),
                            ),
                            Container(
                              height: 100,
                              child:
                            ListView.builder(
                    itemCount: allSteps.steps.length - current_step,
                    itemBuilder: (BuildContext cntxt, int index) {
                      //index = current_step;
                    return Padding(
                      padding: EdgeInsets.all(2),
                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        Padding(padding: EdgeInsets.all(15), child: Text(allSteps.steps[index].text, style: TextStyle(color: Colors.white),)),
                        Padding(padding: EdgeInsets.all(15), child: Text('${allSteps.steps[index].time}' ,style: TextStyle(color: Colors.white),))
                      ],),)
                    );
                  },
                  ),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),)
    );
  }
}