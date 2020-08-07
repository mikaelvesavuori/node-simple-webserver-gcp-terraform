const { NotANumberError } = require("./errorHandling");

const add = (a, b) => {
  if (typeof a !== "number" || typeof b !== "number") {
    throw new NotANumberError("Incoming value is not a number!");
  }

  return a + b;
};

module.exports = { add };
