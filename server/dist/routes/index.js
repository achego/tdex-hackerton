"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const strings_1 = __importDefault(require("../core/values/strings"));
const base_routes_1 = __importDefault(require("./base_routes"));
const useAllRoutes = (app) => {
    useApp(app, "", base_routes_1.default);
};
const useApp = (app, path, router) => {
    app.use(`${strings_1.default.API_BASE}${path}`, router);
};
exports.default = useAllRoutes;
//# sourceMappingURL=index.js.map