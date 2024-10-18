import { StatusCode } from "../../../core/utils/enums.js";
import Strings from "../../../core/values/strings.js";
const customResponse = (res, options) => {
    const { code, message, data, error } = options !== null && options !== void 0 ? options : {};
    const statusCode = code !== null && code !== void 0 ? code : StatusCode.ok;
    res.status(statusCode).send({
        status: _getStatus(statusCode),
        is_ok: statusCode > 103 && statusCode <= 226 ? true : false,
        message,
        data,
    });
};
export default customResponse;
const _getStatus = (code) => {
    if (code > 103 && code <= 226) {
        return Strings.success;
    }
    else {
        return Strings.failed;
    }
};
