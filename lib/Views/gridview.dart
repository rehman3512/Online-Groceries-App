import 'package:flutter/material.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

class GridClass extends StatefulWidget {
  const GridClass({super.key});

  @override
  State<GridClass> createState() => _GridClassState();
}

class _GridClassState extends State<GridClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10,
              childAspectRatio: 0.7)),
          itemCount: 10,
          itemBuilder: (contetext,index){
            return Container(height: 200,width: 200,
              decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  border: Border.all(color: Colors.purpleAccent)
              ),);
            //   Card(child: Column(children: [
            //   Text('1'),
            //   Text('2'),
            //   Text('3'),
            //   Text('4'),
            //   Text('5'),
            //   Text('6'),
            // ],),);
          }),
    );
  }
}
