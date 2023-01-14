-- Size of Games
Select Count(id)
From chessdb.games;

-- Games Rated and Unrated
Select Count(rated)
From chessdb.games 
Where rated='TRUE';

Select Count(rated)
From chessdb.games 
Where rated='FALSE';

-- Average Turns
Select Avg(turns)
From chessdb.games;

-- How Game Ended
Select Count(victory_status)
From chessdb.games
Where victory_status='resign';

Select Count(victory_status)
From chessdb.games
Where victory_status='mate';

Select Count(victory_status)
From chessdb.games
Where victory_status='draw';

Select Count(victory_status)
From chessdb.games
Where victory_status='outoftime';

-- Color Wins
Select Count(winner)
From chessdb.games
Where winner='white';

Select Count(winner)
From chessdb.games
Where winner='black';

Select Count(winner)
From chessdb.games
Where winner='draw';

-- Avg Ratings
Select Avg(white_rating + black_rating) / 2
From chessdb.games;

Select Avg(white_rating)
From chessdb.games;

Select Avg(white_rating)
From chessdb.games;

-- First and Second Moves
Select Left(moves, 2) as first_move, Right(Left(moves, 5), 2) as second_move
From chessdb.games;

Select Count(id)
From chessdb.games
Where Left(moves, 2)='e4';

Select Count(id)
From chessdb.games
Where Left(moves, 2)='d4';

Select Count(id)
From chessdb.games
Where Left(moves, 2)='c4';

Select Count(id)
From chessdb.games
Where Left(moves, 3)='Nf3';

Select Count(id)
From chessdb.games
Where Left(moves, 2)='e3';

Select Count(id)
From chessdb.games
Where Right(Left(moves, 5), 2)='e5';

Select Count(id)
From chessdb.games
Where Right(Left(moves, 5), 2)='d5';

Select Count(id)
From chessdb.games
Where Right(Left(moves, 5), 2)='e6';

Select Count(id)
From chessdb.games
Where Right(Left(moves, 5), 2)='c5';

-- Opening Names
Select opening_name
From chessdb.games;

-- Rating Gap
Select white_rating, black_rating, Abs(white_rating - black_rating) as rating_gap
From chessdb.games;

-- Avg Turns When Each Color Wins
Select Avg(turns)
From chessdb.games
Where winner='white';

Select Avg(turns)
From chessdb.games
Where winner='black';	

-- Elo and Color Advantage
Select Count(id)
From chessdb.games
Where (white_rating + black_rating) >= 3200;

Select Count(id)
From chessdb.games
Where (white_rating + black_rating) < 3200;

-- Above 1600
Select Count(winner)
From chessdb.games
Where (white_rating + black_rating) >= 3200 And winner='white';

Select Count(winner)
From chessdb.games
Where (white_rating + black_rating) >= 3200 And winner='black';

Select Count(winner)
From chessdb.games
Where (white_rating + black_rating) >= 3200 And winner='draw';

Select Avg(turns)
From chessdb.games
Where (white_rating + black_rating) >= 3200 And winner='white';

Select Avg(turns)
From chessdb.games
Where (white_rating + black_rating) >= 3200 And winner='black';

-- Below 1600
Select Count(winner)
From chessdb.games
Where (white_rating + black_rating) < 3200 And winner='white';

Select Count(winner)
From chessdb.games
Where (white_rating + black_rating) < 3200 And winner='black';

Select Count(winner)
From chessdb.games
Where (white_rating + black_rating) < 3200 And winner='draw';

Select Avg(turns)
From chessdb.games
Where (white_rating + black_rating) < 3200 And winner='white';

Select Avg(turns)
From chessdb.games
Where (white_rating + black_rating) < 3200 And winner='black';

-- How Games Ended
-- Above 1600
Select Count(victory_status)
From chessdb.games
Where (white_rating + black_rating) >= 3200 And victory_status='resign';

Select Count(victory_status)
From chessdb.games
Where (white_rating + black_rating) >= 3200 And victory_status='mate';

Select Count(victory_status)
From chessdb.games
Where (white_rating + black_rating) >= 3200 And victory_status='draw';

Select Count(victory_status)
From chessdb.games
Where (white_rating + black_rating) >= 3200 And victory_status='outoftime';

-- Below 1600
Select Count(victory_status)
From chessdb.games
Where (white_rating + black_rating) < 3200 And victory_status='resign';

Select Count(victory_status)
From chessdb.games
Where (white_rating + black_rating) < 3200 And victory_status='mate';

Select Count(victory_status)
From chessdb.games
Where (white_rating + black_rating) < 3200 And victory_status='draw';

Select Count(victory_status)
From chessdb.games
Where (white_rating + black_rating) < 3200 And victory_status='outoftime';