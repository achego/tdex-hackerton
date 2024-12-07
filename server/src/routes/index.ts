import Strings from "../core/values/strings.js";
import baseRoutes from "./base_routes.js";
import { express } from "../global_exports.js";
import authRoutes from "./auth_routes.js";
import userRoutes from "./user_routes.js";
import donationRoutes from "./donation_route.js";

const useAllRoutes = (app: express.Express) => {
  useApp(app, "", baseRoutes);
  useApp(app, "auth", authRoutes);
  useApp(app, "user", userRoutes);
  useApp(app, "donation", donationRoutes);
};

const useApp = (app: express.Express, path: string, router: express.Router) => {
  app.use(`${Strings.API_BASE}${path}`, router);
};

export default useAllRoutes;
