import 'package:get/get.dart';

class DashboardController extends GetxController {

  final menuItems = [

    {
      "title":"Find Lawyer",
      "icon":"search"
    },

    {
      "title":"My Cases",
      "icon":"folder"
    },

    {
      "title":"Chat",
      "icon":"chat"
    },

    {
      "title":"Documents",
      "icon":"document"
    },

  ].obs;

  final cases = [
    {
      "title":"Sterling vs. Apex Corp",
      "desc":"AI-assisted discovery completed. Waiting for judicial...",
      "tag":"CLASS ACTION",
      "priority":"URGENT"
    },
    {
      "title":"Pro Medical",
      "desc":"Medical settlement review...",
      "tag":"REAL ESTATE",
      "priority":"HIGH"
    }

  ].obs;


  final upcoming = [

    {
      "date":"MAY 14",
      "title":"Discovery Meeting",
      "time":"10:30 AM",
      "location":"Virtual Call"
    },

    {
      "date":"MAY 18",
      "title":"Document Signing",
      "time":"02:00 PM",
      "location":"Lexis Chambers"
    }

  ].obs;

}