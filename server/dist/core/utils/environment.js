import { EnvironmentType } from "./enums.js";
class Environment {
    constructor() {
        var _a, _b, _c, _d, _e, _f;
        this.port = (_a = process.env.PORT) !== null && _a !== void 0 ? _a : "6000";
        this.isDev = process.env.ENV_TYPE === EnvironmentType.dev;
        this.jwtExpiresIn = (_b = process.env.JWT_EXPIRES_IN) !== null && _b !== void 0 ? _b : "60d";
        this.jwtSecret = (_c = process.env.JWT_SECRET) !== null && _c !== void 0 ? _c : "@#";
        this.iv = (_d = process.env.IV) !== null && _d !== void 0 ? _d : "@#";
        this.encryptionKey = (_e = process.env.ENCRYPTION_KEY) !== null && _e !== void 0 ? _e : "";
        this.algorithm = (_f = process.env.ALGORITHM) !== null && _f !== void 0 ? _f : "";
    }
}
export default Environment;
