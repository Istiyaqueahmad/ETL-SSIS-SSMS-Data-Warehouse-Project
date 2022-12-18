-- Select database 
 USE [Movies_data]

 --Delete Work_table if existed and create it again
 IF OBJECT_ID('Work_Movies_data', 'U') IS NOT NULL 
 drop table Work_Movies_data

   CREATE TABLE Work_Movies_data (
      
       [color] varchar(500)
      ,[director_name] varchar(500)
      ,[num_critic_for_reviews] float
      ,[duration] float
      ,[director_facebook_likes] float
      ,[actor_3_facebook_likes] float
      ,[actor_2_name] varchar(500)
      ,[actor_1_facebook_likes] float
      ,[gross] float
      ,[genres] varchar(500)
      ,[actor_1_name] varchar(500)
      ,[movie_title] varchar(500)
      ,[num_voted_users] float
      ,[cast_total_facebook_likes] float
      ,[actor_3_name] varchar(500)
      ,[facenumber_in_poster] float
      ,[plot_keywords] varchar(500)
      ,[movie_imdb_link] varchar(500)
      ,[num_user_for_reviews] float
      ,[language] varchar(100)
      ,[country] varchar(100)
      ,[content_rating] varchar(100)
      ,[budget] float
      ,[title_year] date
      ,[actor_2_facebook_likes] float
      ,[imdb_score] float
      ,[aspect_ratio] float
      ,[movie_facebook_likes] float
  )
 
 -- Copy data from the raw table to working table
 INSERT INTO Work_Movies_data
      (
       [color]
      ,[director_name]
      ,[num_critic_for_reviews]
      ,[duration]
      ,[director_facebook_likes]
      ,[actor_3_facebook_likes]
      ,[actor_2_name]
      ,[actor_1_facebook_likes]
      ,[gross]
      ,[genres]
      ,[actor_1_name]
      ,[movie_title]
      ,[num_voted_users]
      ,[cast_total_facebook_likes]
      ,[actor_3_name]
      ,[facenumber_in_poster]
      ,[plot_keywords]
      ,[movie_imdb_link]
      ,[num_user_for_reviews]
      ,[language]
      ,[country]
      ,[content_rating]
      ,[budget]
      ,[title_year]
      ,[actor_2_facebook_likes]
      ,[imdb_score]
      ,[aspect_ratio]
      ,[movie_facebook_likes]
	  )
SELECT 
       [color]
      ,[director_name]
      ,[num_critic_for_reviews]
      ,[duration]
      ,[director_facebook_likes]
      ,[actor_3_facebook_likes]
      ,[actor_2_name]
      ,[actor_1_facebook_likes]
      ,[gross]
      ,[genres]
      ,[actor_1_name]
      ,[movie_title]
      ,[num_voted_users]
      ,[cast_total_facebook_likes]
      ,[actor_3_name]
      ,[facenumber_in_poster]
      ,[plot_keywords]
      ,[movie_imdb_link]
      ,[num_user_for_reviews]
      ,[language]
      ,[country]
      ,[content_rating]
      ,[budget]
      ,[title_year]
      ,[actor_2_facebook_likes]
      ,[imdb_score]
      ,[aspect_ratio]
      ,[movie_facebook_likes]
  FROM [dbo].[Raw_Movies_data]
 -- where ISDATE([title_year]) <> 1

  update [dbo].[Raw_Movies_data]
  set title_year = ''
  where title_year = 'none'




