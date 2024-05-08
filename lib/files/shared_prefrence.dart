import 'package:project_demo/main.dart';

class Prefrence {
 void save() async {
    // get the data
    await preferences.get("key");

    // get the data value form response true or false;
   preferences.getBool("key");

   //get the data value form only double
   preferences.getDouble("key");

   // get the data value form only int
   preferences.getInt("key");

  // get the valye only one data
   preferences.getString("key");

   //get the list of data
   preferences.getStringList("key");

   //set the value form in true or false
    preferences.setBool("key", false);

    // set the value form in double
    preferences.setDouble("key", 0.0);

    //set the value form in int
   preferences.setInt("key", 0);

   // set the value form in string
   preferences.setString("key", "value");


  }
}
