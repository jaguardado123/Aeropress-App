import 'package:flutter/material.dart';
import 'recipe.dart';
import 'timerPage.dart';
import 'countdown.dart';
int time = 0;

  int getTime(CoffeeRecipe recipe) {
      for (int i = 0; i < 2; i++) {
        time += recipe.steps[i].time;
  }
  return time;
  }

class RecipePage extends StatefulWidget {
  CoffeeRecipe recipe;
  RecipePage(this.recipe);

  @override
  _RecipePage createState() => _RecipePage();
}

class _RecipePage extends State<RecipePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(widget.recipe.name, style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      body: 
      Container(
        color: Colors.black87,
        child:
        ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child:
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.grey),
                          color: Colors.black
                        ),
                        padding: EdgeInsets.only(bottom: 10, top: 10,),
                        child: Padding(padding: EdgeInsets.all(10), child:
                        Text(widget.recipe.brew_method, style: TextStyle(color: Colors.white, fontSize: 12),),)
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child:
                      Text('Brew Method', style: TextStyle(color: Colors.white, fontSize: 12),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child:
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.grey),
                          color: Colors.black
                        ),
                        padding: EdgeInsets.only(bottom: 10, top: 10,),
                        child: Padding(padding: EdgeInsets.all(10), child:
                        Text('${widget.recipe.water_volume_grams} grams', style: TextStyle(color: Colors.white, fontSize: 12),),)
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child:
                      Text('Water Volume', style: TextStyle(color: Colors.white, fontSize: 12),),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child:
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.grey),
                          color: Colors.black
                        ),
                        padding: EdgeInsets.only(bottom: 10, top: 10,),
                        child: Padding(padding: EdgeInsets.all(10), child:
                        Text('${widget.recipe.coffee_volume_grams} grams', style: TextStyle(color: Colors.white, fontSize: 12),),)
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child:
                      Text('Coffee Volume', style: TextStyle(color: Colors.white, fontSize: 12),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child:
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.grey),
                          color: Colors.black
                        ),
                        padding: EdgeInsets.only(bottom: 10, top: 10,),
                        child: Padding(padding: EdgeInsets.all(10), child:
                        Text('${widget.recipe.temperature} Fahrenheit', style: TextStyle(color: Colors.white, fontSize: 12),),)
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child:
                      Text('Temperature', style: TextStyle(color: Colors.white, fontSize: 12),),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child:
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.grey),
                          color: Colors.black
                        ),
                        padding: EdgeInsets.only(bottom: 10, top: 10,),
                        child: Padding(padding: EdgeInsets.all(10), child:
                        Text(widget.recipe.grind_size, style: TextStyle(color: Colors.white, fontSize: 12),),)
                      )
                    ),
    
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child:
                      Text('Grind Size', style: TextStyle(color: Colors.white, fontSize: 12),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child:
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.grey),
                          color: Colors.black
                        ),
                        padding: EdgeInsets.only(bottom: 10, top: 10,),
                        child: Padding(padding: EdgeInsets.all(10), child:
                        Text('${getTime(widget.recipe)} Seconds', style: TextStyle(color: Colors.white, fontSize: 12),),)
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child:
                      Text('Traditional', style: TextStyle(color: Colors.white, fontSize: 12),),
                    )
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Steps', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24))
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: widget.recipe.steps.length,
                    itemBuilder: (BuildContext cntxt, int index) {
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
                        Padding(padding: EdgeInsets.all(15), child: Text(widget.recipe.steps[index].text, style: TextStyle(color: Colors.white),)),
                        Padding(padding: EdgeInsets.all(15), child: Text('${widget.recipe.steps[index].time}' ,style: TextStyle(color: Colors.white),))
                      ],),)
                    );
                  },
                  ),
                )
                
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child:
              RaisedButton(
                color: Colors.pink,
                child: Text('START TIMER', style: TextStyle(color: Colors.white, fontSize: 20),),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TimerPage(widget.recipe)))
              )
            )
          ],
        )
      )
      
    );
  }
}