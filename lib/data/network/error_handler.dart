import 'package:tera_store/data/network/fauilure.dart';

enum DataSource {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBBIDEN,
  UNAUTHORISED,
  NOTFOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT,
}

class ResponeCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data
  static const int BAD_REQUEST = 400; // failure , API rejected request
  static const int FORBBIDEN = 403; // failure , API rejected request
  static const int UNAUTHORISED = 401; // failure , API is not authorised
  static const int NOTFOUND = 404; // failure , not found
  static const int INTERNAL_SERVER_ERROR =
      500; // failure , crash in server side

  // local states code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

class ResponeMessage {
  static const String SUCCESS = "success"; // success with data
  static const String NO_CONTENT = "sucess"; // success with no data
  static const String BAD_REQUEST =
      "Bad rquest ,Try again later"; // failure , API rejected request
  static const String FORBBIDEN =
      "Forbbiden rquest ,Try again later"; // failure , API rejected request
  static const String UNAUTHORISED =
      "User unauthorised ,Try again later"; // failure , API is not authorised
  static const String NOTFOUND =
      "Something went wrong ,Try again later"; // failure , not found
  static const String INTERNAL_SERVER_ERROR =
      "Something went wrong ,Try again later"; // failure , crash in server side

  // local states code
  static const String CONNECT_TIMEOUT = "Timeout error ,Try again later";
  static const String CANCEL = "Request was canceled ,Try again later";
  static const String RECIEVE_TIMEOUT = "Timeout error ,Try again later";
  static const String SEND_TIMEOUT = "Timeout error ,Try again later";
  static const String CACHE_ERROR = "Cache error ,Try again later";
  static const String NO_INTERNET_CONNECTION =
      "Please check your internet connection";
  static const String DEFAULT = "Something went wrong ,Try again later";
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.SUCCESS:
        return Failure(
            code: ResponeCode.SUCCESS, message: ResponeMessage.SUCCESS);
        break;
      case DataSource.NO_CONTENT:
        return Failure(
            code: ResponeCode.NO_CONTENT, message: ResponeMessage.NO_CONTENT);
        break;
      case DataSource.BAD_REQUEST:
        return Failure(
            code: ResponeCode.BAD_REQUEST, message: ResponeMessage.BAD_REQUEST);
        break;
      case DataSource.FORBBIDEN:
        return Failure(
            code: ResponeCode.FORBBIDEN, message: ResponeMessage.FORBBIDEN);
        break;
      case DataSource.UNAUTHORISED:
        return Failure(
            code: ResponeCode.UNAUTHORISED,
            message: ResponeMessage.UNAUTHORISED);
        break;
      case DataSource.NOTFOUND:
        return Failure(
            code: ResponeCode.NOTFOUND, message: ResponeMessage.NOTFOUND);
        break;
      case DataSource.INTERNAL_SERVER_ERROR:
        return Failure(
            code: ResponeCode.INTERNAL_SERVER_ERROR,
            message: ResponeMessage.INTERNAL_SERVER_ERROR);
        break;
      case DataSource.CONNECT_TIMEOUT:
        return Failure(
            code: ResponeCode.CONNECT_TIMEOUT,
            message: ResponeMessage.CONNECT_TIMEOUT);
        break;
      case DataSource.CANCEL:
        return Failure(
            code: ResponeCode.CANCEL, message: ResponeMessage.CANCEL);
        break;
      case DataSource.RECIEVE_TIMEOUT:
        return Failure(
            code: ResponeCode.RECIEVE_TIMEOUT,
            message: ResponeMessage.RECIEVE_TIMEOUT);
        break;
      case DataSource.SEND_TIMEOUT:
        return Failure(
            code: ResponeCode.SEND_TIMEOUT,
            message: ResponeMessage.SEND_TIMEOUT);
        break;
      case DataSource.CACHE_ERROR:
        return Failure(
            code: ResponeCode.CACHE_ERROR, message: ResponeMessage.CACHE_ERROR);
        break;
      case DataSource.NO_INTERNET_CONNECTION:
        return Failure(
            code: ResponeCode.NO_INTERNET_CONNECTION,
            message: ResponeMessage.NO_INTERNET_CONNECTION);
        break;
      case DataSource.DEFAULT:
        return Failure(
            code: ResponeCode.DEFAULT, message: ResponeMessage.DEFAULT);
        break;
    }
  }
}
