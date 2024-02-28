class BMICalculator {
  late double height;
  late double weight;
  double? bmi;
  
  BMICalculator(this.height, this.weight);

  BMICalculator.empty();

  calculateBMI() {
    bmi =  weight / (height * height);
  }

  String getRemark() {

    if (bmi! < 18.5) {
      return "Underweight";
    }

    return "Healthy ???";
  }

  String? getCalculatedBMI() {
    if( bmi == null) {
      return "-";
    }
    return bmi?.toStringAsFixed(2);
  }

}