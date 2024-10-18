class CustomError extends Error {
    constructor(message, statusCode, options) {
        var _a, _b;
        super(message);
        this.toJson = () => {
            return {
                status: this.status,
                isOk: this.is_ok,
                message: this.message,
                me: this.stack,
            };
        };
        this.statusCode = statusCode;
        this.status = `${statusCode}`.startsWith("4") ? "failed" : "error";
        this.is_server_dev = (_a = options === null || options === void 0 ? void 0 : options.is_server_dev) !== null && _a !== void 0 ? _a : false;
        this.sever_dev_message = options === null || options === void 0 ? void 0 : options.sever_dev_message;
        this.is_ok = false;
        this.name = (_b = options === null || options === void 0 ? void 0 : options.name) !== null && _b !== void 0 ? _b : "CustomError";
        this.dev_message = options === null || options === void 0 ? void 0 : options.dev_message;
        this.stack_custom = options === null || options === void 0 ? void 0 : options.stack_custom;
        Error.captureStackTrace(this, this.constructor);
    }
}
export default CustomError;
