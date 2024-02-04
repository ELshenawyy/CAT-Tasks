


class User{

   final String? id ;
   final String? code ;
   final String? password;
   final String? accessToken ;
   final String? email ;
   final String? language ;
   final String? fullName ;
   final String? role ;


   /// Constructor
   User({
     this.id,
     this.email,
     this.fullName,
     this.password,
     this.language,
     this.code,
     this.accessToken,
     this.role,
});


   /// Get Data From Api
   ///
   factory User.formJson(Map<String , dynamic> json){
     return User(
       id: json["id"],
       code:json["code"],
       email: json["email"],
       password: json["password"],
       accessToken:  json["access_token"],
       role:json["role"],
       fullName:json["fullName"],
       language:json["lang"],
     );
   }




}