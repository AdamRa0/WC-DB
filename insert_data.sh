#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
($PSQL "TRUNCATE TABLE teams, games");

cat "games.csv" | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != 'winner' ]]
  then
    WINNING_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'");

    if [[ -z $WINNING_TEAM_ID ]]
    then
      ($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')");

      WINNING_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'");
    fi

    OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'");

    if [[ -z $OPPONENT_TEAM_ID ]]
    then
      ($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')");

      OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'");
    fi

    echo "$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ('$YEAR', '$ROUND', '$WINNING_TEAM_ID', '$OPPONENT_TEAM_ID', '$WINNER_GOALS', '$OPPONENT_GOALS')")";
  fi
done