class Failure {
  int code; // 200 , 201 , 301 , 500 and so on
  String message; // error , success
  Failure({required this.code, required this.message});
}
