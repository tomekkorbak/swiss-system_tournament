-- Table definitions for the tournament project.
-- database name: tournaments

-- noinspection SqlNoDataSourceInspection

CREATE TABLE players(
    player_name varchar(30),
    player_id serial PRIMARY KEY,
    matches integer DEFAULT 0,
    wins integer DEFAULT 0
    );

CREATE TABLE matches (
  winner   SERIAL REFERENCES players (player_id),
  loser   SERIAL REFERENCES players (player_id),
  match_id SERIAL PRIMARY KEY,
  date     TIMESTAMP,
  CHECK (winner != loser)
)
