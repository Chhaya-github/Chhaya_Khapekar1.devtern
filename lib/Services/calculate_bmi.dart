class Calculate {
  double calculateBMI(double height, double weight) {
    double bmi = 0;
    bmi = weight / (height * height);

    // to calculate helth condition we will use BMI chart
    // accourding to BMI calculator
    return bmi;
  }

  String getHealthCondition(double bmi) {
    if (bmi > 10 && bmi < 19) {
      return 'UnderWeight';
    } else if (bmi >= 19 && bmi <= 24) {
      return 'Healthy';
    } else if (bmi >= 25 && bmi <= 29.9) {
      return 'Overweight';
    } else if (bmi >= 30 && bmi <= 39.9) {
      return 'Obese';
    } else if (bmi >= 40) {
      return 'Severely Obese';
    } else {
      return 'Invalid Input';
    }
  }
}

