// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:hive/hive.dart';
// import 'package:intl/intl.dart';
// import 'package:pill_reminder/LOGIC/controllers/Details%20Drop%20Down%20Controller/details_drop_down_controller.dart';
// import 'package:pill_reminder/LOGIC/controllers/calendar%20controller/calendar_date_controller.dart';
// import 'package:pill_reminder/UTILS/App%20Properties/appColors.dart';
// import 'package:pill_reminder/UTILS/Widgets%20Utils/App%20Icon/app_icons.dart';
// import 'package:pill_reminder/UTILS/Widgets%20Utils/Demo/demo.dart';
// import 'package:pill_reminder/UTILS/Widgets%20Utils/Icons%20With%20Text%20Row/icons_with_text_row.dart';
// import 'package:pill_reminder/UTILS/Widgets%20Utils/TRANSPARENT%20BACKGROUND/transparent_container.dart';
// import 'package:pill_reminder/UTILS/Widgets%20Utils/Text%20Input/text_input.dart';
// import '../../../UTILS/Widgets Utils/Date Picker Widget/date_picker_widget.dart';
// import '../../../UTILS/Widgets Utils/Dialog/dialog_widget.dart';
// import '../../../UTILS/Widgets Utils/Drop Down/details_drop_down.dart';
// import '../../../UTILS/Widgets Utils/Drop Down/freequncy_drop_down_widget.dart';
// import '../../../UTILS/Widgets Utils/Selected Time Card/selected_time_card.dart';
// import '../../../UTILS/Widgets Utils/drop.dart';
//
//
// class AddedNewMedicine extends StatefulWidget {
//   AddedNewMedicine({Key? key}) : super(key: key);
//
//   @override
//   State<AddedNewMedicine> createState() => _AddedNewMedicineState();
// }
//
// class _AddedNewMedicineState extends State<AddedNewMedicine> {
//   TextEditingController medicineNameController = TextEditingController();
//
//   TextEditingController medicineDoseController = TextEditingController();
//   bool beforeEatingClicked = false;
//   bool afterEatingClicked = false;
//   bool addMoreTimeClicked = false;
//
//
//   List<Map<String, dynamic>>timeSetList = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             body: Container(
//       color: Colors.indigo[100],
//       child: Stack(
//         children: [
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 // ----------------------------------------------- Added New Medicine --------------------------------------
//                 Container(
//                     height: 100,
//                     decoration: BoxDecoration(
//                         borderRadius:
//                             BorderRadius.only(bottomRight: Radius.circular(200)),
//                         color: Colors.indigoAccent),
//                     child: Row(
//                       children: [
//                         Padding(
//                             padding: EdgeInsets.all(20),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 AppColorsAndText.headline("Add New Medicine"),
//                                 SizedBox(
//                                   height: 3,
//                                 ),
//                                 AppColorsAndText.smallHeadline(
//                                     "Set Reminder for New Medicine",
//                                     textColor: Colors.white54)
//                               ],
//                             ))
//                       ],
//                     )),
//
//                 // -----------------------------------------------  New Medicine Details --------------------------------------
//                 Container(
//                       decoration: BoxDecoration(color: Colors.indigoAccent),
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.only(topLeft: Radius.circular(150)),
//                             color: Colors.indigo[100]),
//                         child: Padding(
//                           padding: EdgeInsets.all(10),
//                           child: Column(
//                               // crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 //------------------------------- Icon-----------------------
//
//                                 SizedBox(
//                                     width: (MediaQuery.of(context).size.width) *
//                                         0.35),
//                                 GestureDetector(
//                                   onTap: (){
//
//                                   },
//                                   child: AppIcon(
//                                       backgroundcolor: Colors.blueGrey,
//                                       path: "assests/icons/yoga1.jpg",
//                                       iconSize: 100,
//                                       containerSize: 100),
//                                 ),
//
//                                 //-------------------------------- Medicine Reminder--------------
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 AppColorsAndText.headline("Medicine Reminder"),
//
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//
//                                 //-------------------------------- Medicine Name--------------
//                                 TextInputt(
//                                     controllerName: medicineNameController,
//                                     label: "Medicine Name",
//                                     hint: "Enter the Name",
//                                     prefixIconn: Icon(Icons.note_alt_outlined)),
//                                 //-------------------------------- Medicine Dose--------------
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//                                 TextInputt(
//                                     controllerName: medicineNameController,
//                                     label: "Medicine Name",
//                                     hint: "Enter the Name",
//                                     prefixIconn: Icon(Icons.account_tree_outlined)),
//
//                                 //------------------------------  Medicine Type ----------------
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//                                 Container(
//                                   padding: EdgeInsets.all(5),
//                                   height: 115,
//                                   //color: Colors.red,
//                                   child: Column(
//
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       AppColorsAndText.medHeadline("Type"),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Expanded(
//                                           child: Container(
//                                             //color: Colors.black87,
//                                             child: ListView.builder(
//                                               shrinkWrap: true,
//                                                 scrollDirection: Axis.horizontal,
//                                                 itemCount: 5,
//                                                 itemBuilder: (context,position){
//                                                 return TransparentContainer(
//                                                   height: 0,
//                                                   width: 0,
//                                                   blurFilterColor: Colors.blue,
//                                                   isPressed: false,
//                                                 child: AppIcon(
//                                                   backgroundcolor: Colors.transparent,
//                                                   path: 'assests/icons/syrup.png',
//                                                   iconSize: 0,
//                                                   containerSize: 60,),
//
//                                                 );
//                                                 }),
//                                           )
//                                       )
//                                     ],
//                                   ),
//                                 ),
//
//                                 //------------------------------  Medicine Taking Type ----------------
//                                   Divider(
//                                       height: 1,thickness: 2,color: Colors.indigo[200]
//                                   ),
//                                   Container(
//                                     padding: EdgeInsets.all(5),
//                                     height: 95,
//                                     //color: Colors.red,
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         AppColorsAndText.medHeadline("Take"),
//                                         Expanded(
//                                             child: Container(
//                                               //color: Colors.black87,
//                                               child: Row(
//                                                 children: [
//                                                   //-------------------------- Before Eating------------------
//                                                   GestureDetector(
//                                                     onTap:(){
//                                                       setState(() {
//                                                         beforeEatingClicked =true;
//                                                         if(beforeEatingClicked){
//                                                           afterEatingClicked = false;
//                                                         }else{
//                                                           afterEatingClicked = true;
//                                                         }
//                                                         print("beforeEatingClicked val is -- ${beforeEatingClicked}");
//                                                         print("afterEatingClicked val is -- ${afterEatingClicked}");
//                                                       });
//                                                     },
//                                                     child: IconsWithTextRow(
//                                                         //blurFilterColor: Colors.deepOrangeAccent,
//                                                       blurFilterColor: beforeEatingClicked? Colors.pink[800]!:Colors.transparent,
//                                                         imgPath: "assests/icons/syrup.png",
//                                                         text: "Before Eating"),
//                                                   ),
//
//                                                   //-------------------------- After Eating------------------
//                                                   GestureDetector(
//                                                     onTap:(){
//                                                       setState(() {
//                                                         afterEatingClicked =true;
//                                                         if(afterEatingClicked){
//                                                           beforeEatingClicked = false;
//                                                         }else{
//                                                           beforeEatingClicked = true;
//                                                         }
//                                                         print(afterEatingClicked);
//                                                       });
//                                                     },
//
//                                                     child: IconsWithTextRow(
//                                                         blurFilterColor: afterEatingClicked? Colors.greenAccent:Colors.transparent,
//                                                         imgPath: "assests/icons/syrup.png",
//                                                         text: "After Eating"),
//                                                   ),
//                                                 ],
//                                               )
//                                             )
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   Divider(
//                                     height: 1,
//                                       thickness: 2,
//                                       color: Colors.indigo[200]
//                                 ),
//
//                                 //------------------------------ Optional  ----------------
//
//                                 Card(
//                                   color: Colors.indigo[100],
//                                   elevation: 2,
//                                   child: ExpansionTile(
//                                       title: AppColorsAndText.medHeadline("Optional"),
//                                     children: [
//                                       Column(
//                                         children: [
//                                           //------------------------------  Medicine Amount----------------
//                                           Container(
//                                             height: 90,
//                                             padding: EdgeInsets.all(5),
//                                             //color: Colors.red,
//                                             child: Row(
//                                               children: [
//                                                 //------------------------------  Medicine Amount----------------
//                                                 Container(
//                                                   width: MediaQuery.of(context).size.width/2.5,
//                                                   //color: Colors.blue,
//                                                   child: TextInputt(
//                                                     isnumberr: TextInputType.number,
//                                                     controllerName: medicineNameController,
//                                                     label: 'Amount',
//                                                     hint: 'No. to Take',
//                                                     prefixIconn: Icon(Icons.add_card_outlined),),
//                                                 ),
//                                                 SizedBox(
//                                                   width: 15,
//                                                 ),
//                                                 //------------------------------  Medicine Strip Total Amount  ----------------
//                                                 Expanded(child: Container(
//                                                   //color: Colors.green,
//                                                   child: TextInputt(
//                                                     controllerName: medicineNameController,
//                                                     label: 'Packet Contain',
//                                                     hint: 'Total No. of Medicine in a packet',
//                                                     prefixIconn: Icon(Icons.add_card_outlined),),
//                                                 ))
//                                               ],
//                                             ),
//                                           ),
//                                           //------------------------------  Medicine Cause ----------------
//                                           Container(
//                                               height: 90,
//                                               padding: EdgeInsets.all(5),
//                                               //color: Colors.red,
//                                               child: TextInputt(
//                                                 controllerName: medicineDoseController,
//                                                 label: 'Cause',
//                                                 hint: 'Medicine Used in ... Diagnosis',
//                                                 prefixIconn: Icon(Icons.add_card_outlined),)
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//
//
//                                 //------------------------------  Medicine Frequency ----------------
//                                 Container(
//                                   height: 95,
//                                   padding: EdgeInsets.only(left: 5, right: 5),
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       AppColorsAndText.medHeadline("Frequency"),
//                                       IconsWithTextRow(
//                                           blurFilterColor: Colors.deepOrangeAccent,
//                                           imgPath: "assests/icons/health_tracker.png",
//                                           text: "Frequency"),
//                                       Divider(
//                                           height: 1,thickness: 2,color: Colors.indigo[200]
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 //------------------------------------------------------- More Option -------------------------------******************
//
//                                 GetBuilder<DetailsDropDownController>(builder: (dtlsDrpdwnController){
//                                   return Card(
//                                     color: Colors.indigo[200],
//                                     elevation: 2,
//                                     child: ExpansionTile(
//                                       title: AppColorsAndText.medHeadline("More Option"),
//                                       children: [
//                                         Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             AppColorsAndText.medHeadline("Frequency"),
//                                             SizedBox(height: 7,),
//                                             FrequncyDropDownWidget(),
//                                             SizedBox(height: 20,),
//                                             Divider(
//                                                 height: 1,thickness: 2,color: Colors.indigo[100]
//                                             ),
//                                             SizedBox(height: 5,),
//                                             AppColorsAndText.medHeadline("Details"),
//                                             SizedBox(height: 5,),
//                                             DetailsDropDown(),
//                                             SizedBox(height: 10,),
//                                             Row(
//                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                               children: [
//                                                 AppColorsAndText.medHeadline("Time Set At"),
//                                                 dtlsDrpdwnController.detailsDrpDwnVal =='multiple'?
//                                                 GestureDetector(
//                                                     onTap: (){
//                                                       setState(() {
//                                                         addMoreTimeClicked = true;
//                                                         if(dtlsDrpdwnController.noOfTimeCard>7){
//                                                           Get.snackbar("Limit Exceed", "You can added 7 time reminder at a time");
//                                                         }
//                                                         dtlsDrpdwnController.getnoOfTimeCard;
//
//                                                       });
//                                                       print("clicked");
//
//                                                     },
//                                                     child: Icon(Icons.add_circle_outline, color: Colors.indigo,)
//                                                 )
//                                                     :
//                                                 SizedBox.shrink()
//                                               ],
//                                             ),
//
//                                             SizedBox(height: 15,),
//
//                                             ((){
//                                               List dtsdrpdwnList = dtlsDrpdwnController.getDetailsDrpDwnVal();
//                                               return Demo(dtlsdrpdwnList: dtsdrpdwnList);
//                                             }()),
//
//
//                                             SizedBox(height: 15,),
//                                             Text(dtlsDrpdwnController.detailsDrpDwnVal.toString())
//                                           ],
//                                         ),
//
//
//                                       ],
//                                     ),
//                                   );
//                                 }),
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//                                 //------------------------------  Medicine Schedule ----------------
//                                 Container(
//                                   height: 95,
//                                   padding: EdgeInsets.only(left: 5, right: 5),
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       AppColorsAndText.medHeadline("Schedule"),
//                                       Expanded(
//                                         child: Container(
//                                           height: 90,
//                                           //padding: EdgeInsets.all(5),
//                                           //color: Colors.black87,
//                                           child: Row(
//                                             children: [
//                                               //----------------------------------- Date From-------------------------------
//                                               GestureDetector(
//                                                 onTap:(){
//                                                   Get.bottomSheet(
//                                                       backgroundColor: Colors.indigo[200],
//                                                       barrierColor: Colors.transparent,
//                                                       isDismissible: true,
//                                                       shape:RoundedRectangleBorder(
//                                                           borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))
//                                                       ),
//                                                       datePickerWidget(DateTime.now())
//                                                   );
//                                                   print("object");
//                                                 },
//                                                 child: IconsWithTextRow(
//                                                     blurFilterColor: Colors.deepOrangeAccent,
//                                                     imgPath: "assests/icons/calendar.png",
//                                                     text: "From : 21/01/22"),
//                                               ),
//                                           //----------------------------------- Date To-------------------------------
//                                               GetBuilder<DateController>(builder: (dateController){
//                                                 return IconsWithTextRow(
//                                                     blurFilterColor: Colors.deepOrangeAccent,
//                                                     imgPath: "assests/icons/calendar.png",
//                                                     text: "To :  ${DateFormat('dd/MM/yy').format(dateController.selectedDate)}");
//                                               })
//
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                       Divider(
//                                           height: 1,thickness: 2,color: Colors.indigo[200]
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 //------------------------------  Medicine Time ----------------
//
//                                 IconsWithTextRow(
//                                     blurFilterColor: Colors.deepOrangeAccent,
//                                     imgPath: "assests/icons/health_tracker.png",
//                                     text: "Time"),
//
//                                 Divider(
//                                     height: 1,thickness: 2,color: Colors.indigo[200]
//                                 ),
//
//
//                                 //------------------------------  Set Alarm Tone ----------------
//                                 Container(
//                                     height: 90,
//                                     padding: EdgeInsets.all(5),
//                                     //color: Colors.red,
//                                     child: IconsWithTextRow(
//                                         blurFilterColor: Colors.transparent,
//                                         imgPath: "assests/icons/syrup.png",
//                                         text: "Select Alarm Tone")
//                                 ),
//
//                                 //----------------------------------------- Added Button -------------------------
//                                 Container(
//                                   height: 50,
//                                   padding: EdgeInsets.all(5),
//                                   decoration: BoxDecoration(
//                                     color: Colors.green,
//                                     borderRadius: BorderRadius.circular(12)
//                                   ),
//                                   child: Center(
//                                     child: AppColorsAndText.medHeadline("Add Medicine"),
//                                   ),
//                                 ),
//
//                                 SizedBox(
//                                   height: 25,
//                                 ),
//                                 GestureDetector(
//                                   onTap: (){
//                                    // AudioCache cache = new AudioCache();
//                                    // cache.play("alarmm.mp3");
//                                    //player.play();
//                                     //const pa = "assests/audio/musiccmp3";
//                                     //player.setSource("icons/alarmm.mp3");
//                                     //player.play();
//                                     //player.setSource(AssetSource("assests/audio/just-relax-11157.mp3"));
//                                   },
//                                   child: Container(
//                                     height: 50,
//                                     padding: EdgeInsets.all(5),
//                                     decoration: BoxDecoration(
//                                         color: Colors.green,
//                                         borderRadius: BorderRadius.circular(12)
//                                     ),
//                                     child: Center(
//                                       child: AppColorsAndText.medHeadline("Play"),
//                                     ),
//                                   ),
//                                 )
//
//                               ]),
//                         ),
//                       )),
//
//               ],
//             ),
//           )
//         ],
//       ),
//     )));
//   }
// }
