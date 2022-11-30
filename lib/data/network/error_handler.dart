enum DataSource {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDEN,
  UNAUTHORISED,
  NOTFOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
}

class ResponeCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data
  static const int BAD_REQUEST = 400; // failure , API rejected request
  static const int FORBIDEN = 403; // failure , API rejected request
  static const int UNAUTHORISED = 401; // failure , API is not authorised
  //static const int NOTFOUND = 200;
  static const int INTERNAL_SERVER_ERROR =
      500; // failure , crash in server side

  // local states code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int UNKNOWN = -7;
}
