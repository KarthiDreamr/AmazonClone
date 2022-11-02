class AuthenticationMethods {

  Future<String> signUpUser(
      {
        required String name,
      required String address, 
      required String email, 
      required String password
      }

      ) async {
    name.trim();
    address.trim();
    email.trim();
    password.trim();
    String output = "Something went wrong";
    if (name!= "" && address!="" && email!= "" && password!=""){
      output == "success";
    } else{
      output= "Please fill up everything";
    }
    return output;
  }



}
