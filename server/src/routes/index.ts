import Strings from "../core/values/strings";
import baseRoutes from "./base_routes";
import { express } from "../global_exports";
import authRoutes from "./auth_routes";
import userRoutes from "./user_routes";

const useAllRoutes = (app: express.Express) => {
  useApp(app, "", baseRoutes);
  useApp(app, "auth", authRoutes);
  useApp(app, "user", userRoutes);
};

const useApp = (app: express.Express, path: string, router: express.Router) => {
  app.use(`${Strings.API_BASE}${path}`, router);
};

export default useAllRoutes;
