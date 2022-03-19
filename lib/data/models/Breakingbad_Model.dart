// ignore_for_file: file_names
class Breakingbad {
  int? charId;
  String? name;
  String? birthday;
  List<String>? occupation;
  String? img;
  String? status;
  String? nickname;
  List<int>? appearance;
  String? portrayed;
  String? category;
  List<dynamic>? betterCallSaulAppearance;

  Breakingbad(
      {this.charId,
      this.name,
      this.birthday,
      this.occupation,
      this.img,
      this.status,
      this.nickname,
      this.appearance,
      this.portrayed,
      this.category,
      this.betterCallSaulAppearance});

  Breakingbad.fromJson(Map<String, dynamic> json) {
    charId = json['char_id'];
    name = json['name'];
    birthday = json['birthday'];
    occupation = json['occupation'].cast<String>();
    img = json['img'];
    status = json['status'];
    nickname = json['nickname'];
    appearance = json['appearance'].cast<int>();
    portrayed = json['portrayed'];
    category = json['category'];
    betterCallSaulAppearance = json['betterCallSaulAppearance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['char_id'] = charId;
    data['name'] = name;
    data['birthday'] = birthday;
    data['occupation'] = occupation;
    data['img'] = img;
    data['status'] = status;
    data['nickname'] = nickname;
    data['appearance'] = appearance;
    data['portrayed'] = portrayed;
    data['category'] = category;
    data['betterCallSaulAppearance'] = betterCallSaulAppearance;
    return data;
  }
}
