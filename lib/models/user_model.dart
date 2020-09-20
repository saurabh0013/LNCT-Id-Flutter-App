

class UserModel{
  String name;
  String imageUrl;
  String gender;
  String semester;
  String branch;
  String college;
 
  UserModel.fromjson(data){  
    name = data['Name'];
    branch = data["Branch"];
    college = data["College"];
    semester = data["Semseter"];
    gender = data["Gender"];
    imageUrl = data["ImageUrl"];
  }
}