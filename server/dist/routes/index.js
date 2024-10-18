import Strings from "../core/values/strings.js";
import baseRoutes from "./base_routes.js";
import authRoutes from "./auth_routes.js";
import userRoutes from "./user_routes.js";
const useAllRoutes = (app) => {
    useApp(app, "", baseRoutes);
    useApp(app, "auth", authRoutes);
    useApp(app, "user", userRoutes);
};
const useApp = (app, path, router) => {
    app.use(`${Strings.API_BASE}${path}`, router);
};
export default useAllRoutes;
