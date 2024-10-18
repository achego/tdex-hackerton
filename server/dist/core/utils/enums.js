export var EnvironmentType;
(function (EnvironmentType) {
    EnvironmentType["dev"] = "dev";
    EnvironmentType["prod"] = "prod";
})(EnvironmentType || (EnvironmentType = {}));
export class ResposeStatus {
    constructor(statusCode) {
        this._statusCode = statusCode !== null && statusCode !== void 0 ? statusCode : 400;
    }
    get getString() {
        if (this._statusCode > 103 && this._statusCode <= 226) {
            return "success";
        }
        else {
            return "failed";
        }
    }
    get getBool() {
        if (this._statusCode > 103 && this._statusCode <= 226) {
            return true;
        }
        else {
            return false;
        }
    }
}
ResposeStatus.success = "success";
ResposeStatus.failed = "failed";
export var StatusCode;
(function (StatusCode) {
    // Successfull requests
    StatusCode[StatusCode["ok"] = 200] = "ok";
    //   The request succeeded, and a new resource was created as a result. This is typically the response sent after POST requests, or some PUT requests.
    StatusCode[StatusCode["created"] = 201] = "created";
    // The request has been received but not yet acted upon. It is noncommittal, since there is no way in HTTP to later send an asynchronous response indicating the outcome of the request. It is intended for cases where another process or server handles the request, or for batch processing.
    StatusCode[StatusCode["accepted"] = 202] = "accepted";
    // Redirect Requests
    StatusCode[StatusCode["temporaryRedirect"] = 307] = "temporaryRedirect";
    // Client Errors
    StatusCode[StatusCode["badRequest"] = 400] = "badRequest";
    StatusCode[StatusCode["unauthorized"] = 401] = "unauthorized";
    StatusCode[StatusCode["forbidden"] = 403] = "forbidden";
    /**
     * Not found
     */
    StatusCode[StatusCode["notFound"] = 404] = "notFound";
    // Server Error
    StatusCode[StatusCode["internalServerError"] = 500] = "internalServerError";
})(StatusCode || (StatusCode = {}));
