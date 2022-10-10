import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:web/home/full_image_view.dart';
import 'package:web/home/model/ItemData.dart';

class HomeListTile extends StatelessWidget {
  ItemData _data;

  HomeListTile(this._data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FullImageView(_data.imageurl)));
      },
      child: Container(
        decoration: BoxDecoration(

            border: Border.symmetric(vertical: BorderSide(color: Colors.grey,width: 2.0),horizontal: BorderSide(color: Colors.grey,width: 2.0)),
            boxShadow: [BoxShadow(color: Colors.white24, spreadRadius: 3)]),
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: "image",
              child: Image.network(
                '${_data.imageurl}.png',
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Rs. ${_data.bikeprice}',
              style: TextStyle(fontSize: 15, color: Colors.green),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '${_data.bikeName}',
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
