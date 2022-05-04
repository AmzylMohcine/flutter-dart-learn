class User {
  //props

  String? _fistname, _lastname, _picture, _email, _phone;

  //getters /setters

  String? get firstname => _fistname;
  String? get lastname => _lastname;
  String? get picture => _picture;
  String? get email => _email;
  String? get phone => _phone;

  set firstname(String? value) => _fistname = value;
  set lastname(String? value) => _lastname = value;
  set picture(String? value) => _picture = value;
  set email(String? value) => _email = value;
  set phone(String? value) => _phone = value;

//Constructor
  User();

  factory User.fromJSON(json) {
    User user = User();

    user._fistname = json['name']['first'];
    user._lastname = json['name']['last'];
    user._picture = json['picture'];
    user._email = json['email'];
    user._phone = json['phone'];

    return user;
  }
}
