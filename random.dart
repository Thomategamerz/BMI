
import 'package:flutter/material.dart';


void main()
{

  runApp(const BMI());
}


class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BMI Calculator"),

        ),
        body:Center(

          child: Container(
            width: 300,
            child: Column(
              children: [
                SizedBox(height: 35,),


                Text("BMI",style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700
                ),),
                SizedBox(height: 35,),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text("Enter Your Weight"),
                    prefixIcon: Icon(Icons.health_and_safety),
                  ),

                ),
                SizedBox(height: 21,),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text("Enter Your Height in feet"),
                    prefixIcon: Icon(Icons.height),
                  ),

                ),
                SizedBox(height: 21,),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text("Enter Your height in inches"),
                    prefixIcon: Icon(Icons.health_and_safety),
                  ),

                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  var wt = wtController.text.toString();
                  var ft =  ftController.text.toString();
                  var inch = inController.text.toString();

                  if(wt!="" && ft!="")
                  {
                    //BMI calculator
                    var iwt = int.parse(wt);
                    var ift = int.parse(ft);
                    var iInch = int.parse(inch);



                  }
                  else
                  {
                    setState(() {
                      result = "Please enter all required fields";
                    });

                  }
                }, child: Text("Calculate")),
                Text(result,style: TextStyle(fontSize: 16,color: Colors.red),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

OutlineButton(
shape: StadiumBorder(),
highlightedBorderColor: Colors.red,
borderSide: BorderSide(
width: 2,
color: Colors.red
),
onPressed: () { },
child: Text('OutlineButton with custom shape and border'),
)

CalCulate_BMI(weight_Controller.text, height_Controller.text);

ElevatedButton(
onPressed: (){
CalCulate_BMI(weight_Controller.text, height_Controller.text);
},
child: Text("Calculate",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
style: ButtonStyle(
backgroundColor: MaterialStateProperty.all(Color(0xFF0038FF)),
shape: MaterialStateProperty.all<RoundedRectangleBorder>(
RoundedRectangleBorder(
borderRadius: BorderRadius.circular(15.0),
)
)
),
),