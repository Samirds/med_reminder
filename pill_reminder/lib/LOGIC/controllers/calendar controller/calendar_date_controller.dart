import 'package:get/get.dart';

class DateController extends GetxController{
  DateTime selectedDate = DateTime.now();

  set setSelectedDate(DateTime date){
    selectedDate = date;
    update();
    print("selectedDate is ${selectedDate}");
  }

  get getSelectedDate=>selectedDate;
}