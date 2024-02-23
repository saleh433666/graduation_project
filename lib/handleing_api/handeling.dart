//Future<void> _handleRegister() async {
  //if (_formKey.currentState!.validate()) {
    //show snackbar to indicate loading
    //ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //content: const Text('Processing Data'),
      //backgroundColor: Colors.green.shade300,
    //));

    //the user data to be sent
    //Map<String, dynamic> userData = {
      //"Email": [
        //{
          //"Type": "Primary",
          //"Value": emailController.text,
        //}
      //],
      //"Password": passwordController.text,
      //"About": 'I am a new user :smile:',
      //"FirstName": "Test",
      //"LastName": "Account",
      //"BirthDate": "10-12-1985",
      //"Gender": "M",
    //};

    //get response from ApiClient
    //dynamic res = await _apiClient.registerUser(userData);
    //ScaffoldMessenger.of(context).hideCurrentSnackBar();

    //checks if there is no error in the response body.
    //if error is not present, navigate the users to Login Screen.
  //  if (res['ErrorCode'] == null) {
    //  Navigator.push(context,
      //    MaterialPageRoute(builder: (context) => const LoginScreen()));
    //} else {
      //if error is present, display a snackbar showing the error messsage
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //content: Text('Error: ${res['Message']}'),
        //backgroundColor: Colors.red.shade300,
      //));
    //}
  //}
//}


//Future<void> loginUsers() async {
//  if (_formKey.currentState!.validate()) {
    //show snackbar to indicate loading
  //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //  content: const Text('Processing Data'),
      //backgroundColor: Colors.green.shade300,
 //   ));

    //get response from ApiClient
//    dynamic res = await _apiClient.login(
  //    emailController.text,
    //  passwordController.text,
  //  );
    //ScaffoldMessenger.of(context).hideCurrentSnackBar();

    //if there is no error, get the user's accesstoken and pass it to HomeScreen
//    if (res['ErrorCode'] == null) {
  //    String accessToken = res['access_token'];
    //  Navigator.push(
      //    context,
        //  MaterialPageRoute(
          //    builder: (context) => HomeScreen(accesstoken: accessToken)));
 //   } else {
      //if an error occurs, show snackbar with error message
   //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
     //   content: Text('Error: ${res['Message']}'),
       // backgroundColor: Colors.red.shade300,
   //   ));
 //   }
  //}
//}



//Future<Map<String, dynamic>> getUserData() async {
  //dynamic userRes;
  //userRes = await _apiClient.getUserProfileData(widget.accesstoken);
  //return userRes;
//}