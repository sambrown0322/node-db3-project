const db = require("./scheme-db-config");

function find() {
  return db("schemes");
}

function findById(id) {
  return db("schemes").where({ id: id });
}

function findSteps(id) {
  return db("schemes").where({ id: id });
}

function add(scheme) {
  return db("schemes").insert(scheme);
}

function update(changes, id) {
  return db("schemes").update(changes).where({ id });
}

function remove(id) {
  return db("schemes").delete().where({ id });
}
module.exports = { find, findById, findSteps, add, update, remove };
