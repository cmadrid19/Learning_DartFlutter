class UnitConverter {
  double centigradesToFahrenheit(double centigrades) {
    return (centigrades * 1.8) + 32;
  }

  double fahrenheitToCentigrade(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
  }

  double ouncesToGrams(double ounces) {
    return ounces * 28.3495;
  }

  double gramsToOunces(double grams) {
    return grams * 0.0353;
  }

  double gallonsToLiters(double gallons) {
    return gallons * 3.7854;
  }

  double litersToGallons(double liters) {
    return liters * 0.26417205235815;
  }

  double metersToYards(double meters) {
    return meters * 1.0936;
  }

  double yardsToMeters(double yards) {
    return yards * 0.9144;
  }
}

double operationSelected(int mainOption, int sideOption, double userInput) {
  UnitConverter myUnitConverter = UnitConverter();
  switch (mainOption) {
    case 1:
      if (sideOption == 1) {
        return myUnitConverter.gramsToOunces(userInput);
      } else if (sideOption == 2) {
        return myUnitConverter.ouncesToGrams(userInput);
      }
      break;
    case 2:
      if (sideOption == 1) {
        return myUnitConverter.litersToGallons(userInput);
      } else if (sideOption == 2) {
        return myUnitConverter.gallonsToLiters(userInput);
      }
      break;
    case 3:
      if (sideOption == 1) {
        return myUnitConverter.metersToYards(userInput);
      } else if (sideOption == 2) {
        return myUnitConverter.yardsToMeters(userInput);
      }
      break;
    case 4:
      if (sideOption == 1) {
        return myUnitConverter.centigradesToFahrenheit(userInput);
      } else if (sideOption == 2) {
        return myUnitConverter.fahrenheitToCentigrade(userInput);
      }
      break;
  }
  return 0.0;
}
