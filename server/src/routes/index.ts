import Strings from "../core/values/strings";
import baseRoutes from "./base_routes";
import { express } from "../global_exports";

const useAllRoutes = (app: express.Express) => {
  useApp(app, "", baseRoutes);
};

const useApp = (app: express.Express, path: string, router: express.Router) => {
  app.use(`${Strings.API_BASE}${path}`, router);
};

export default useAllRoutes;
