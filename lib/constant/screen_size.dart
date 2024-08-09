class ScreenSize {
  static double valueResult = 100;
  static double valueTextSize = 100;
  static double valueBtnDimension = 10;

  static Map<String, double> screenWidthControl(double width) {
    if (width > 1920) {
      valueResult = width * 0.8;
      valueTextSize = 27;
      valueBtnDimension = 110;
    } else if (width > 1680 && width <= 1920) {
      valueResult = width * 0.7;
      valueTextSize = 25;
      valueBtnDimension = 80;
    } else if (width > 1370 && width <= 1680) {
      valueResult = width * 0.7;
      valueTextSize = 17;
      valueBtnDimension = 63;
    } else if (width > 1280 && width <= 1370) {
      valueResult = width * 0.7;
      valueTextSize = 14;
      valueBtnDimension = 60;
    } else if (width > 1024 && width <= 1280) {
      valueResult = width * 0.7;
      valueTextSize = 13.5;
      valueBtnDimension = 57;
    } else if (width > 785 && width <= 1024) {
      valueResult = width * 0.7;
      valueTextSize = 13;
      valueBtnDimension = 53;
    } else if (width > 580 && width <= 785) {
      valueResult = width * 0.7;
      valueTextSize = 11.5;
      valueBtnDimension = 45;
    } else if (width > 480 && width <= 580) {
      valueResult = width * 0.7;
      valueTextSize = 12;
      valueBtnDimension = 30;
    } else if (width > 390 && width <= 480) {
      valueResult = width * 0.7;
      valueTextSize = 10;
      valueBtnDimension = 40;
    } else if (width <= 390) {
      valueResult = width * 0.7;
      valueTextSize = 10;
      valueBtnDimension = 34;
    }

    return {
      'valueResult': valueResult,
      'valueTextSize': valueTextSize,
      'valueBtnDimension': valueBtnDimension
    };
  }
}
