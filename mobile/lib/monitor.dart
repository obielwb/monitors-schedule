class Monitor {
  String id = '';
  String name = '';
  String email = '';
  String avatar = '';
  Object schedule = {};

  Monitor(this.id, this.name, this.email, this.avatar, this.schedule);

  Monitor.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        avatar = json['avatar'],
        schedule = json['schedule'];

  Map toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'avatar': avatar,
      'schedule': schedule
    };
  }
}
