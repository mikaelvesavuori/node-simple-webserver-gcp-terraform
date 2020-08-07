const fastify = require("fastify")({ logger: true });

const PORT = process.env.PORT || 443;

fastify.get("/", async (request, reply) => {
  reply
    .header("Content-Type", "text/html")
    .send(
      `<html><head><title>Simple Node.js webserver</title></head><body><p>Simple Node.js webserver</p></body></html>`
    );
});

fastify.get("/hello", async (request, reply) => {
  reply.send({ hello: "world" });
});

const start = async () => {
  try {
    await fastify.listen(PORT, "0.0.0.0"); // We are going to add the last localhost section to make sure this is correctly exposed to Docker
    fastify.log.info(`server listening on ${fastify.server.address().port}`);
  } catch (err) {
    fastify.log.error(err);
    process.exit(1);
  }
};
start();
