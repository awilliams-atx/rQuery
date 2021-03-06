CREATE TABLE pokemons (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  trainer_id INTEGER,

  FOREIGN KEY (trainer_id) REFERENCES trainer(id)
);

CREATE TABLE trainers (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  gym_id INTEGER,

  FOREIGN KEY (gym_id) REFERENCES gym(id)
);

CREATE TABLE gyms (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

INSERT INTO
  gyms (id, name)
VALUES
  (1, "Pewter Gym"), (2, "Cerulean Gym"), (3, "Vermilion Gym");

INSERT INTO
  trainers (id, name, gym_id)
VALUES
  (1, "Brock", 1),
  (2, "Misty", 2),
  (3, "Lt. Surge", 3),
  (4, "Professor Oak", NULL);

INSERT INTO
  pokemons (id, name, trainer_id)
VALUES
  (1, "Onyx", 1),
  (2, "Krabby", 2),
  (3, "Pikachu", 3),
  (4, "Voltorb", 3),
  (5, "Mew", NULL);
