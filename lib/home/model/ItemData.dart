/// bikeName : "pulsar"
/// bike_year : "2013"
/// bikeprice : 25000
/// chNo : "BDUDJ4488"
/// date : "24/Jul/2022"
/// engineNo : "JDJDJ43848"
/// id : "0"
/// imageurl : ""
/// rcNo : "HSIEHDHU33H"
//@dart=2.9
class ItemData {
  ItemData({
      String bikeName, 
      String bikeYear, 
      int bikeprice, 
      String chNo, 
      String date, 
      String engineNo, 
      String id, 
      String imageurl, 
      String rcNo,}){
    _bikeName = bikeName;
    _bikeYear = bikeYear;
    _bikeprice = bikeprice;
    _chNo = chNo;
    _date = date;
    _engineNo = engineNo;
    _id = id;
    _imageurl = imageurl;
    _rcNo = rcNo;
}

  ItemData.fromJson(dynamic json) {
    _bikeName = json['bikeName'];
    _bikeYear = json['bike_year'];
    _bikeprice = json['bikeprice'];
    _chNo = json['chNo'];
    _date = json['date'];
    _engineNo = json['engineNo'];
    _id = json['id'];
    _imageurl = json['imageurl'];
    _rcNo = json['rcNo'];
  }
  String _bikeName;
  String _bikeYear;
  int _bikeprice;
  String _chNo;
  String _date;
  String _engineNo;
  String _id;
  String _imageurl;
  String _rcNo;
ItemData copyWith({  String bikeName,
  String bikeYear,
  int bikeprice,
  String chNo,
  String date,
  String engineNo,
  String id,
  String imageurl,
  String rcNo,
}) => ItemData(  bikeName: bikeName ?? _bikeName,
  bikeYear: bikeYear ?? _bikeYear,
  bikeprice: bikeprice ?? _bikeprice,
  chNo: chNo ?? _chNo,
  date: date ?? _date,
  engineNo: engineNo ?? _engineNo,
  id: id ?? _id,
  imageurl: imageurl ?? _imageurl,
  rcNo: rcNo ?? _rcNo,
);
  String get bikeName => _bikeName;
  String get bikeYear => _bikeYear;
  int get bikeprice => _bikeprice;
  String get chNo => _chNo;
  String get date => _date;
  String get engineNo => _engineNo;
  String get id => _id;
  String get imageurl => _imageurl;
  String get rcNo => _rcNo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bikeName'] = _bikeName;
    map['bike_year'] = _bikeYear;
    map['bikeprice'] = _bikeprice;
    map['chNo'] = _chNo;
    map['date'] = _date;
    map['engineNo'] = _engineNo;
    map['id'] = _id;
    map['imageurl'] = _imageurl;
    map['rcNo'] = _rcNo;
    return map;
  }

}