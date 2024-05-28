import 'package:intl/intl.dart';

class CFormatter{
  CFormatter._();
  static String dateFormatter(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MMM-YYYY').format(date);
  }
  static String currencyFormatter(double amount){
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }
  static String phoneNoFormatter(String phoneNumber){
    if(phoneNumber.length == 10){
      return '(${phoneNumber.substring(0, 3)})-${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
    }else if(phoneNumber.length == 11){
      return '(${phoneNumber.substring(0, 4)})-${phoneNumber.substring(4, 7)}-${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }

  static String internationalPhoneFormatter(String phoneNumber){
    //need to implement logic
  
    return phoneNumber;
  }
}