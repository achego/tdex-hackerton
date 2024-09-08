import { env } from "../globals";

const logger = (text: any, title?: any, ...[maxChars = 100]) => {
  if (env.isDev) {
    return;
  }
  var err = new Error();
  var trace = err.stack ?? "";

  try {
    if (trace.split("at ").length > 1) {
      trace = trace.split("at ")[2].replace(process.cwd(), "");
      if (trace.includes(">") && trace.split(">").length > 1) {
        trace = trace.split(">")[1];
      }
      if (trace.includes(")")) {
        trace = trace.split(")")[0];
      }
      trace = trace.replace("(", "");
    }

    const now = new Date(Date.now());
    const time = `${now.getHours()}:${now.getMinutes()}:${now.getSeconds()}:${now.getMilliseconds()}`;
    console.log(
      `\x1B[35m${time}\x1B[0m - \x1B[31m${title
        .toString()
        .toUpperCase()}\x1B[0m === \x1b[33m\x1B[0m \x1b[2m${trace}\x1B[0m`,
      text?.toString().length > maxChars
        ? text
        : // ? text.toString().substring(0, maxChars)
          text
    );
  } catch (error) {
    console.log(
      `\x1B[31mError -> ${
        error ?? "error"
      }\x1B[0m === \x1b[33m${text}\x1B[0m \x1b[2m${trace}\x1B[0m'`
    );
    console.log(
      `\x1B[31mError -> ${
        title ?? "error".toUpperCase()
      }\x1B[0m === \x1b[33m${text}\x1B[0m \x1b[2m${trace}\x1B[0m'`
    );
  }
};

export default logger;
