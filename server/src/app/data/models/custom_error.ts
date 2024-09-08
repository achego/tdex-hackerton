class CustomError extends Error {
  statusCode: number;
  status: string;
  dev_message?: string;
  is_ok?: boolean;
  sever_dev_message?: any;
  stack_custom?: any;
  private is_server_dev: boolean;

  constructor(
    message: string,
    statusCode: number,
    options?: {
      name?: string;
      dev_message?: string;
      is_server_dev?: boolean;
      sever_dev_message?: any;
      stack_custom?: any;
    }
  ) {
    super(message);
    this.statusCode = statusCode;
    this.status = `${statusCode}`.startsWith("4") ? "failed" : "error";
    this.is_server_dev = options?.is_server_dev ?? false;
    this.sever_dev_message = options?.sever_dev_message;
    this.is_ok = false;
    this.name = options?.name ?? "CustomError";
    this.dev_message = options?.dev_message;
    this.stack_custom = options?.stack_custom;

    Error.captureStackTrace(this, this.constructor);
  }

  toJson = () => {
    return {
      status: this.status,
      isOk: this.is_ok,
      message: this.message,
      me: this.stack,
    };
  };
}

export default CustomError;
