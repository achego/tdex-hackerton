export enum EnvironmentType {
  dev = "dev",
  prod = "prod",
}

export class ResposeStatus {
  static success = "success";
  static failed = "failed";

  private _statusCode: number;

  constructor(statusCode?: number) {
    this._statusCode = statusCode ?? 400;
  }

  get getString(): string {
    if (this._statusCode > 103 && this._statusCode <= 226) {
      return "success";
    } else {
      return "failed";
    }
  }

  get getBool(): boolean {
    if (this._statusCode > 103 && this._statusCode <= 226) {
      return true;
    } else {
      return false;
    }
  }
}

export enum StatusCode {
  // Successfull requests
  ok = 200,

  //   The request succeeded, and a new resource was created as a result. This is typically the response sent after POST requests, or some PUT requests.
  created = 201,

  // The request has been received but not yet acted upon. It is noncommittal, since there is no way in HTTP to later send an asynchronous response indicating the outcome of the request. It is intended for cases where another process or server handles the request, or for batch processing.
  accepted = 202,

  // Redirect Requests
  temporaryRedirect = 307,

  // Client Errors
  badRequest = 400,
  unauthorized = 401,
  forbidden = 403,

  /**
   * Not found
   */
  notFound = 404,

  // Server Error
  internalServerError = 500,
}
