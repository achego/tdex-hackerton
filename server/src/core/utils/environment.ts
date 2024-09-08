import { EnvironmentType } from "./enums";

class Environment {
  port: string = process.env.PORT ?? "6000";
  isDev: boolean = process.env.ENV_TYPE === EnvironmentType.dev;
}

export default Environment;
