class CPriceCalculator{
  CPriceCalculator._();
  static double calculatePrice(double productPrice, String location){
    double taxRate = getTaxRateOfLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);
    double totalPrice = taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateOfLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  } 

  static double getTaxRateOfLocation(String location){
    //lookup using api\
    return 10.0; //for now only
  }

  static double getShippingCost(location){
    return 70.0; //for now only, later use api
  }
}