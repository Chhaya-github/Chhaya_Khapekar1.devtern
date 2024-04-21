import 'package:bmi_calculator/Colors/colors.dart';
import 'package:bmi_calculator/Services/calculate_bmi.dart';
import 'package:bmi_calculator/Widgets/text_input.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  bool showResult = false;
  String? healthCondition;
  double BMI = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    CustomTextInputFiled(
                      textEditingController: weightController,
                      hintText: 'Enter Weight in Kilograms (kg)',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextInputFiled(
                      textEditingController: heightController,
                      hintText: 'Enter Height in Meter (m)',
                    ),
                    const SizedBox(height: 20),

                    // to show result
                    if (showResult)
                      Column(
                        children: [
                          Text(
                            '$BMI',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).brightness ==
                                        Brightness.light
                                    ? Colors.black
                                    : Colors.white),
                          ),
                          Text(
                            '$healthCondition',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).brightness ==
                                        Brightness.light
                                    ? Colors.black
                                    : Colors.white),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                              weightController.text = '';
                              heightController.text = '';
                              showResult = false;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(primaryColor),
                              elevation: MaterialStateProperty.all(0),
                              fixedSize: MaterialStateProperty.all(Size(
                                  MediaQuery.of(context).size.width * 0.8,
                                  MediaQuery.of(context).size.height * 0.065))),
                            child: const Text(
                              'Reset',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      )
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    print('onpressed called');
                    Calculate calculate = Calculate();
                    double height = double.parse(heightController.text);
                    double weight = double.parse(weightController.text);
                    BMI = calculate.calculateBMI(height, weight);
                    healthCondition = calculate.getHealthCondition(BMI);
                    setState(() {
                      showResult = true;
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(primaryColor),
                      elevation: MaterialStateProperty.all(0),
                      fixedSize: MaterialStateProperty.all(Size(
                          MediaQuery.of(context).size.width,
                          MediaQuery.of(context).size.height * 0.065))),
                  child: const Text(
                    'Calculate',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
















