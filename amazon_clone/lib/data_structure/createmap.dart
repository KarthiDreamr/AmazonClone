class CreateMap {
  CreateMap({required Name, required Address});
  var name;
  var address;
  getVal(){
  Map<String,String> map = {"Name":name,"Address":address};
    return map;
  }
}