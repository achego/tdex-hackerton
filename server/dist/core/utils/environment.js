"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const enums_1 = require("./enums");
class Environment {
    constructor() {
        var _a;
        this.port = (_a = process.env.PORT) !== null && _a !== void 0 ? _a : "6000";
        this.isDev = process.env.ENV_TYPE === enums_1.EnvironmentType.dev;
    }
}
exports.default = Environment;
//# sourceMappingURL=environment.js.map