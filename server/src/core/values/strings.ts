class ErrorText {
  unknowError: string = "An unknown error occured, please try again later";
}

class Strings {
  static API_BASE: string = "/";
  static success: string = "success";
  static failed: string = "failed";

  static errorText = new ErrorText();
}

export default Strings;
