class UserDetails {
  String? uid;
  String? name;
  String? email;
  String? username;
  String? status;
  String? profilePhoto;
  int? state;

  UserDetails(
      {this.uid,
      this.name,
      this.email,
      this.username,
      this.profilePhoto,
      this.status,
      this.state});

  Map toMap(UserDetails user) {
    var data = <String, dynamic>{};
    data["uid"] = user.uid;
    data["name"] = user.name;
    data["email"] = user.email;
    data["username"] = user.username;
    data["status"] = user.status;
    data["state"] = user.state;
    data["profile_photo"] = user.profilePhoto;
    return data;
  }

  UserDetails.fromMap(Map<String, dynamic> mapData) {
    uid = mapData["uid"];
    name = mapData["name"];
    email = mapData["email"];
    username = mapData["username"];
    status = mapData["status"];
    state = mapData["state"];
    profilePhoto = mapData["profile_photo"];
  }
}
