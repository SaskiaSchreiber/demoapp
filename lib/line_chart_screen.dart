import 'package:demo_app/price_point.dart';
import 'package:flutter/material.dart';
import 'line_chart.dart';

class LineChartScreen extends StatelessWidget{
  const LineChartScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
        body:Home()
    );
  }
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: const Text("Flutter Chart"),
          automaticallyImplyLeading: true,
                ),
      body: content(),
    );
  }
  Widget content() {
    return Scaffold(
      body: SafeArea(
        child: LineChartWidget(pricePoints),
      ),
    );
  }
}

class Home extends StatefulWidget{
  const Home({Key? key}) : super (key: key);

  @override
  State<Home> createState() => _HomeState();
}

/*
body: SafeArea(
child: Center(
child: SizedBox(
width: 600,
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
SizedBox(
height: 300,
child: Row(
children: [
RotatedBox(
quarterTurns: 1,
child: Slider(
value: baselineY,
onChanged: (newValue) {
setState(() {
baselineY = newValue;
});
},
min: -10,
max: 10,
),
),
SizedBox(
child: Chart(baselineX, (20 - (baselineY + 10)) - 10),
width: 540,
)
],
),
),
SizedBox(
child: Slider(
value: baselineX,
onChanged: (newValue) {
setState(() {
baselineX = newValue;
});
},
min: -10,
max: 10,
),
)
],
),
),
),
),
 */