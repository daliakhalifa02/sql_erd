/*selecting the id of the Best Picture winner movie  */
SELECT movie_id FROM oscars WHERE type= 'Best Picture';

/*selecting the name and earnings_rank of the best ranked movie */
SELECT name, earnings_rank
FROM movies 
WHERE earnings_rank=(SELECT MIN(earnings_rank) FROM movies) ;
