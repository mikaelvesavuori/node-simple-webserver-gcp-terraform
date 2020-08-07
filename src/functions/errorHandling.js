class NotANumberError extends Error {
  constructor(message) {
    super(message);

    // This is not covered by the tests
    /*
    if (Error.captureStackTrace) {
      Error.captureStackTrace(this, NotANumberError);
		}
		*/

    this.name = "NotANumberError";
    this.date = new Date();
    this.message = message;

    console.error(`${this.name}\n${this.message}\nThrown at ${this.date}`);
  }
}

module.exports = { NotANumberError };
