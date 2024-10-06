import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget{
  const ImmutableWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.green,
        boxShadow: [BoxShadow(blurRadius: 10),],
        gradient: RadialGradient(
          colors:[
            Colors.lightGreen,
            Colors.green,],
          center: Alignment(-0.3, 0.9),
        ),

      ),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [BoxShadow(blurRadius: 10),],
            gradient: const RadialGradient(
              colors:[
              Colors.deepPurpleAccent,
              Colors.purple,],
              center: Alignment(-0.3, -0.5),
              ),

          ),

          child: Padding(
            padding: const EdgeInsets.all(50.0),
             child:_buildShinyCircle(),
          ),
        ),
      ),
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blueAccent,
          ],
          center: Alignment(-0.3, -0.5),
        ),
        boxShadow: [
          BoxShadow(blurRadius: 20),
        ],
      ),
    );
  }
}
