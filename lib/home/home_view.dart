import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:web/home/model/ItemData.dart';
import 'package:web/home/widget/home_list_tile.dart';
import 'package:web/widget/navigationbar/centerView/center_view.dart';
import 'package:web/widget/navigationbar/navigationbar.dart';
import 'package:http/http.dart' as http;

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<ItemData> loadedProfile = [];
  List<Widget> listData=[];

  @override
  void initState() {
    fetchtheprofiles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            SizedBox(height: 20,),
         /*   Container(
              height: 300,
              child: GridView.builder(
                itemCount: loadedProfile.length,
                itemBuilder: (context, index) => HomeListTile(loadedProfile[index]),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  mainAxisSpacing: 10.0
                ),
              ),
            ),*/
            Container(
              margin: EdgeInsets.all(10.0),
              child: Wrap(
                spacing:15.0,
                alignment: WrapAlignment.center,
                runSpacing: 15.0,
                textDirection: TextDirection.rtl,

                children: [
                  ...listData
                ],
              ),
            )


          ],
        ),
      ),
    );
  }

  Future<void> fetchtheprofiles() async {
    final response = await http.get(Uri.parse(
        "https://bikegarage-5b538-default-rtdb.firebaseio.com/BikeRegister.json?"));
    print("fIREbaSE dATA *****${json.decode(response.body)}");
    //final List<Profile> loadedProfile = [];
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    extractedData.forEach((profileId, profileData) {
      loadedProfile.add(
        ItemData(
          bikeName: profileData['bikeName'],
          bikeprice: profileData['bikeprice'],
          chNo: profileData['chNo'],
          date: profileData['date'],
          engineNo: profileData['engineNo'],
          imageurl: profileData['imageurl'],
          rcNo: profileData['chNo'],
          id: profileData['id'],
        ),
      );
    });

    for(var i in loadedProfile){
      listData.add(HomeListTile(i));
    }
    setState(() {

    });
    print("DataClass *** ${loadedProfile[0].bikeName}");
  }
}
