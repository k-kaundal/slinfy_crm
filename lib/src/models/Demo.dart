class Demo{
  String? name;
  Demo({
    this.name
});

  Map<String,dynamic> toJson(){
    final Map<String, dynamic> data=<String,dynamic>{};
    data['name']= name;
    return data;
  }
  Demo.fromData(Map<String,dynamic> json) {
    _fromData(json);
  }
  _fromData(Map<String,dynamic> json) {
  name = json['name'];

  }
}