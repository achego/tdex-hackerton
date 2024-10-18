class ErrorText {
    constructor() {
        this.unknowError = "An unknown error occured, please try again later";
    }
}
class Strings {
}
Strings.API_BASE = "/";
Strings.success = "success";
Strings.failed = "failed";
Strings.errorText = new ErrorText();
export default Strings;
