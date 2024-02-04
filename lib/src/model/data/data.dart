class Data {
  Data({
      Token? token,}){
    _token = token;
}

  Data.fromJson(dynamic json) {
    _token = json['token'] != null ? Token.fromJson(json['token']) : null;
  }
  Token? _token;
Data copyWith({  Token? token,
}) => Data(  token: token ?? _token,
);
  Token? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_token != null) {
      map['token'] = _token?.toJson();
    }
    return map;
  }

}

class Token {
  Token({
      int? expiresIn, 
      String? accessToken, 
      String? refreshToken, 
      User? user,}){
    _expiresIn = expiresIn;
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    _user = user;
}
  Token.fromJson(dynamic json) {
    _expiresIn = json['expires_in'];
    _accessToken = json['access_token'];
    _refreshToken = json['refresh_token'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  int? _expiresIn;
  String? _accessToken;
  String? _refreshToken;
  User? _user;
Token copyWith({  int? expiresIn,
  String? accessToken,
  String? refreshToken,
  User? user,
}) => Token(  expiresIn: expiresIn ?? _expiresIn,
  accessToken: accessToken ?? _accessToken,
  refreshToken: refreshToken ?? _refreshToken,
  user: user ?? _user,
);
  int? get expiresIn => _expiresIn;
  String? get accessToken => _accessToken;
  String? get refreshToken => _refreshToken;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['expires_in'] = _expiresIn;
    map['access_token'] = _accessToken;
    map['refresh_token'] = _refreshToken;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}
class User {
  User({
      int? id, 
      String? fullName, 
      String? email, 
      String? lang, 
      String? passwordHash, 
      List<Roles>? roles, 
      Settings? settings, 
      SystemAccount? systemAccount, 
      String? code, 
      String? startDate, 
      bool? active, 
      String? role,}){
    _id = id;
    _fullName = fullName;
    _email = email;
    _lang = lang;
    _passwordHash = passwordHash;
    _roles = roles;
    _settings = settings;
    _systemAccount = systemAccount;
    _code = code;
    _startDate = startDate;
    _active = active;
    _role = role;
}
  User.fromJson(dynamic json) {
    _id = json['id'];
    _fullName = json['fullName'];
    _email = json['email'];
    _lang = json['lang'];
    _passwordHash = json['passwordHash'];
    if (json['roles'] != null) {
      _roles = [];
      json['roles'].forEach((v) {
        _roles?.add(Roles.fromJson(v));
      });
    }
    _settings = json['settings'] != null ? Settings.fromJson(json['settings']) : null;
    _systemAccount = json['systemAccount'] != null ? SystemAccount.fromJson(json['systemAccount']) : null;
    _code = json['code'];
    _startDate = json['startDate'];
    _active = json['active'];
    _role = json['role'];
  }
  int? _id;
  String? _fullName;
  String? _email;
  String? _lang;
  String? _passwordHash;
  List<Roles>? _roles;
  Settings? _settings;
  SystemAccount? _systemAccount;
  String? _code;
  String? _startDate;
  bool? _active;
  String? _role;
User copyWith({  int? id,
  String? fullName,
  String? email,
  String? lang,
  String? passwordHash,
  List<Roles>? roles,
  Settings? settings,
  SystemAccount? systemAccount,
  String? code,
  String? startDate,
  bool? active,
  String? role,
}) => User(  id: id ?? _id,
  fullName: fullName ?? _fullName,
  email: email ?? _email,
  lang: lang ?? _lang,
  passwordHash: passwordHash ?? _passwordHash,
  roles: roles ?? _roles,
  settings: settings ?? _settings,
  systemAccount: systemAccount ?? _systemAccount,
  code: code ?? _code,
  startDate: startDate ?? _startDate,
  active: active ?? _active,
  role: role ?? _role,
);
  int? get id => _id;
  String? get fullName => _fullName;
  String? get email => _email;
  String? get lang => _lang;
  String? get passwordHash => _passwordHash;
  List<Roles>? get roles => _roles;
  Settings? get settings => _settings;
  SystemAccount? get systemAccount => _systemAccount;
  String? get code => _code;
  String? get startDate => _startDate;
  bool? get active => _active;
  String? get role => _role;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['fullName'] = _fullName;
    map['email'] = _email;
    map['lang'] = _lang;
    map['passwordHash'] = _passwordHash;
    if (_roles != null) {
      map['roles'] = _roles?.map((v) => v.toJson()).toList();
    }
    if (_settings != null) {
      map['settings'] = _settings?.toJson();
    }
    if (_systemAccount != null) {
      map['systemAccount'] = _systemAccount?.toJson();
    }
    map['code'] = _code;
    map['startDate'] = _startDate;
    map['active'] = _active;
    map['role'] = _role;
    return map;
  }

}



class SystemAccount {
  SystemAccount({
      int? id, 
      String? accountName,}){
    _id = id;
    _accountName = accountName;
}

  SystemAccount.fromJson(dynamic json) {
    _id = json['id'];
    _accountName = json['accountName'];
  }
  int? _id;
  String? _accountName;
SystemAccount copyWith({  int? id,
  String? accountName,
}) => SystemAccount(  id: id ?? _id,
  accountName: accountName ?? _accountName,
);
  int? get id => _id;
  String? get accountName => _accountName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['accountName'] = _accountName;
    return map;
  }

}

/// id : 1
/// themeName : "material-light"

class Settings {
  Settings({
      int? id, 
      String? themeName,}){
    _id = id;
    _themeName = themeName;
}

  Settings.fromJson(dynamic json) {
    _id = json['id'];
    _themeName = json['themeName'];
  }
  int? _id;
  String? _themeName;
Settings copyWith({  int? id,
  String? themeName,
}) => Settings(  id: id ?? _id,
  themeName: themeName ?? _themeName,
);
  int? get id => _id;
  String? get themeName => _themeName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['themeName'] = _themeName;
    return map;
  }

}

/// id : 1
/// name : "ADMIN"
/// authority : "ADMIN"

class Roles {
  Roles({
      int? id, 
      String? name, 
      String? authority,}){
    _id = id;
    _name = name;
    _authority = authority;
}

  Roles.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _authority = json['authority'];
  }
  int? _id;
  String? _name;
  String? _authority;
Roles copyWith({  int? id,
  String? name,
  String? authority,
}) => Roles(  id: id ?? _id,
  name: name ?? _name,
  authority: authority ?? _authority,
);
  int? get id => _id;
  String? get name => _name;
  String? get authority => _authority;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['authority'] = _authority;
    return map;
  }

}