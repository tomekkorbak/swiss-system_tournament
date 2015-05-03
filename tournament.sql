-- Table definitions for the tournament project.

-- noinspection SqlNoDataSourceInspection

CREATE TABLE players(
    player_id serial PRIMARY KEY,
    player_name varchar(30),
    wins integer
    );

CREATE TABLE matches (
  match_id SERIAL PRIMARY KEY,
  winner   SERIAL REFERENCES players (player_id),
  looser   SERIAL REFERENCES players (player_id),
  date     TIMESTAMP,
  CHECK (winner != looser)
)
