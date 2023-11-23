
import 'package:get/get.dart';

class DetailsDropDownController extends GetxController{

   String detailsDrpDwnVal = '';
   List<Map<String, dynamic>>timeSetList = [];
   int noOfTimeCard = 3;



   set setDetailsDrpDwnVal(val){
      detailsDrpDwnVal = val;
      update();
   }

   get getnoOfTimeCard {
      noOfTimeCard = noOfTimeCard+1;
      update();
   }

    List getDetailsDrpDwnVal(){
      if(detailsDrpDwnVal=="once"){
         timeSetList = [];
         for(int i=0; i<1; i++){
            Map<String, dynamic> timeSetMap = Map();
            timeSetMap["index"] = i;
            timeSetMap['showValue'] = true;
            timeSetList.add(timeSetMap);
         }
         update();
         return timeSetList;
   }
      else if(detailsDrpDwnVal=="twice"){
         timeSetList = [];
         for(int i=0; i<2; i++){
            Map<String, dynamic> timeSetMap = Map();
            timeSetMap["index"] = i;
            timeSetMap['showValue'] = true;
            timeSetList.add(timeSetMap);
         }
         update();
         return timeSetList;
      }


      else if(detailsDrpDwnVal=="multiple"){
         timeSetList = [];
         for(int i=0; i<noOfTimeCard; i++) {
            Map<String, dynamic> timeSetMap = Map();
            timeSetMap["index"] = i;
            timeSetMap['showValue'] = true;
            timeSetList.add(timeSetMap);
            if(i>5)
               break;
            }
         update();
         return timeSetList;
      }


      else{
         timeSetList = [];
         return timeSetList;
      }
    }





}
