-- SQL QURERIES FOR CREATING THE IMDB DATABASE

-- // Create Database 
CREATE DATABASE IMDB_MOVIES

-- // Create Moive table 
 CREATE TABLE movie_table 
-- // insert the movie Data into the   Movie table
INSERT INTO `movie_table` (`Id`, `MOVIE_NAME`, `MOVIE_DIRECTOR`, `MUSIC_DIRECTOR`, `MOVIE_LANGUAGE`, `RELEASE_DATE`, `MOVIE_PRODUCTION`, `RUN_TIME`) VALUES ('1', 'Mersal', 'Atlee', 'A.R Rahman', 'Tamil, Malayalam, Kanada, Telegu, Hindi, English', '2017-10-18', 'Thenandal Studio Limited', '163 minutes');
INSERT INTO `movie_table` (`Id`, `MOVIE_NAME`, `MOVIE_DIRECTOR`, `MUSIC_DIRECTOR`, `MOVIE_LANGUAGE`, `RELEASE_DATE`, `MOVIE_PRODUCTION`, `RUN_TIME`) VALUES ('2', 'Vaalee', 'S.J Surya', 'Deva', 'Tamil, Malayalam, Kanada, Hindi, Telegu,English', '1999-04-30', 'NIC Arts', '159 minutes');
INSERT INTO `movie_table` (`Id`, `MOVIE_NAME`, `MOVIE_DIRECTOR`, `MUSIC_DIRECTOR`, `MOVIE_LANGUAGE`, `RELEASE_DATE`, `MOVIE_PRODUCTION`, `RUN_TIME`) VALUES ('3', 'Naane Varuvean', 'Selvaragavan', 'Yuvan Shankar Raja', 'Tamil, Malayalam, Kanada, Telegu, Hindi, English', '2022-09-29', 'V Creation', '122 minutes');
INSERT INTO `movie_table` (`Id`, `MOVIE_NAME`, `MOVIE_DIRECTOR`, `MUSIC_DIRECTOR`, `MOVIE_LANGUAGE`, `RELEASE_DATE`, `MOVIE_PRODUCTION`, `RUN_TIME`) VALUES ('4', 'Thadam', 'Magizh Thirumeni', 'Arun Raj', 'Tamil, Malayalam, Telegu', '2019-03-01', 'The Cinema People', '160 minutes');
INSERT INTO `movie_table` (`Id`, `MOVIE_NAME`, `MOVIE_DIRECTOR`, `MUSIC_DIRECTOR`, `MOVIE_LANGUAGE`, `RELEASE_DATE`, `MOVIE_PRODUCTION`, `RUN_TIME`) VALUES ('5', 'Irumugan', 'Anand Shankar', 'Harris Jayaraj', 'Tamil, Malayalam, Kanada, Telegu, English, Hindi', '2016-09-08', 'Thameens Films', '134 minutes');

--// Update the movie table Set the Movie image in url 
UPDATE `movie_table` SET `Movie_Image` = 'https://upload.wikimedia.org/wikipedia/en/8/8b/Mersal_soundtrack.jpg' WHERE `movie_table`.`Id` = 1;
UPDATE `movie_table` SET `Movie_Image` = 'https://upload.wikimedia.org/wikipedia/en/b/b4/Vaalee_1999_poster.JPG' WHERE `movie_table`.`Id` = 2;
UPDATE `movie_table` SET `Movie_Image` = 'https://upload.wikimedia.org/wikipedia/en/a/ae/Naane_Varuvean.jpg' WHERE `movie_table`.`Id` = 3;
UPDATE `movie_table` SET `Movie_Image` = 'https://upload.wikimedia.org/wikipedia/en/b/ba/Thadam_poster.jpg' WHERE `movie_table`.`Id` = 4;
UPDATE `movie_table` SET `Movie_Image` = 'https://upload.wikimedia.org/wikipedia/en/e/e0/Iru_Mugan.jpg' WHERE `movie_table`.`Id` = 5;

-- // Create Genere Table
CREATE TABLE `GENRETABLE`(Id SERIAL PRIMARY KEY, MOVIEID INTEGER REFERENCES movie_table(Id), Genre VARCHAR(155) );
-- // Insert the genre Data in to the Genre Table
INSERT INTO `genretable` (`Id`, `Movie_Id`, `Genre`) VALUES ('1', '1', 'Action');
INSERT INTO `genretable` (`Id`, `Movie_Id`, `Genre`) VALUES ('2', '1', 'Thriller');
INSERT INTO `genretable` (`Id`, `Movie_Id`, `Genre`) VALUES ('3', '2', 'Romance');

INSERT INTO `genretable` (`Id`, `Movie_Id`, `Genre`) VALUES ('4', '2', 'Thriller');
INSERT INTO `genretable` (`Id`, `Movie_Id`, `Genre`) VALUES ('5', '3', 'Horror');
INSERT INTO `genretable` (`Id`, `Movie_Id`, `Genre`) VALUES ('6', '3', 'Thriller');
INSERT INTO `genretable` (`Id`, `Movie_Id`, `Genre`) VALUES ('7', '4', 'Thriller');
INSERT INTO `genretable` (`Id`, `Movie_Id`, `Genre`) VALUES ('8', '5', 'Science-fiction');
INSERT INTO `genretable` (`Id`, `Movie_Id`, `Genre`) VALUES ('9', '5', 'Spy Action');

-- //Create Review table
CREATE TABLE `User_Table`(Id SERIAL PRIMARY KEY, User_Profileimage VARCHAR(350), User_Name VARCHAR(100), User_Email VARCHAR(200));
-- // Insert the User data into the User Table
INSERT INTO `user_table` (`Id`, `User_Profileimage`, `User_Name`, `User_Email`) VALUES ('1', 'https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper.png', 'Vijay', 'Vijay@gmail.com');
INSERT INTO `user_table` (`Id`, `User_Profileimage`, `User_Name`, `User_Email`) VALUES ('2', 'https://w7.pngwing.com/pngs/481/915/png-transparent-computer-icons-user-avatar-woman-avatar-computer-business-conversation-thumbnail.png', 'Surya', 'Surya@gmail.com');
INSERT INTO `user_table` (`Id`, `User_Profileimage`, `User_Name`, `User_Email`) VALUES ('3', 'https://png.pngtree.com/png-vector/20220709/ourmid/pngtree-businessman-user-avatar-wearing-suit-with-red-tie-png-image_5809521.png', 'Vikaram', 'vikram@gmail.com');
INSERT INTO `user_table` (`Id`, `User_Profileimage`, `User_Name`, `User_Email`) VALUES ('4', 'https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper.png', 'Dale Steyn', 'steyndale@gmail.com');
INSERT INTO `user_table` (`Id`, `User_Profileimage`, `User_Name`, `User_Email`) VALUES ('5', 'https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper.png', 'Raphael Nadal', 'nadalraphel@gmail.com');

-- // Create Review and Rating table
CREATE TABLE `Review_Table`(Id SERIAL PRIMARY KEY,User_Id INTEGER(150) REFERENCES user_table(Id), MOVIEID INTEGER(150) REFERENCES movie_table(Id),Rating INTEGER(50), Review VARCHAR(300));
-- // Insert the rating and review data into the review table
INSERT INTO `review_table` (`Id`, `User_Id`, `MOVIEID`, `Rating`, `Review`) VALUES ('1', '1', '1', '10', 'A great eg of how to deliver a social message without boring the audience');
INSERT INTO `review_table` (`Id`, `User_Id`, `MOVIEID`, `Rating`, `Review`) VALUES ('2', '2', '2', '9', 'A feel good movie all time');
INSERT INTO `review_table` (`Id`, `User_Id`, `MOVIEID`, `Rating`, `Review`) VALUES ('3', '3', '3', '9', 'One man show');
INSERT INTO `review_table` (`Id`, `User_Id`, `MOVIEID`, `Rating`, `Review`) VALUES ('4', '4', '4', '10', 'A well-written and well-executed story and screenplay really amazing ');
INSERT INTO `review_table` (`Id`, `User_Id`, `MOVIEID`, `Rating`, `Review`) VALUES ('5', '5', '5', '8', 'good movie to watch with different screenplay');

-- // Create Artist table
CREATE TABLE `Artist_Table`(Id SERIAL PRIMARY KEY,Name VARCHAR(150),Skill VARCHAR(150), Roles_Play VARCHAR(150));
-- // Insert artist data into Artist table
INSERT INTO `artist_table` (`Id`, `Name`, `Skill`, `Roles_Play`) VALUES ('1', 'Vijay', 'Acting, Dancing, Stylish Model, Singing', 'Hero');
INSERT INTO `artist_table` (`Id`, `Name`, `Skill`, `Roles_Play`) VALUES ('2', 'Danush', 'Acting, Dancing, Singing, Lyricist, Director, Producer', 'Hero, Anti-Hero or Villan');
INSERT INTO `artist_table` (`Id`, `Name`, `Skill`, `Roles_Play`) VALUES ('3', 'Arun Vijay', 'Acting', 'Hero, Villan');
INSERT INTO `artist_table` (`Id`, `Name`, `Skill`, `Roles_Play`) VALUES ('4', 'Vikram', 'Acting', 'Hero');
INSERT INTO `artist_table` (`Id`, `Name`, `Skill`, `Roles_Play`) VALUES ('5', 'Kamal Hasan', 'Acting, Dancing, Stunts, Direction, Singer, Lyricist, ', 'Hero');
INSERT INTO `artist_table` (`Id`, `Name`, `Skill`, `Roles_Play`) VALUES ('6', 'Ajith', 'Acting', 'Hero, Anti-HEro');

-- // Create Multiple Role data table
CREATE TABLE `Multi-Role_Table`(Id SERIAL PRIMARY KEY,Artist_Id INTEGER(150) REFERENCES artist_table(Id), MOVIEID INTEGER(150) REFERENCES movie_table(Id),Roles_Acting VARCHAR(200));
-- //Insert the Multiple roles data into the multiple-role table
INSERT INTO `multi-role_table` (`Id`, `Artist_Id`, `MOVIEID`, `Roles_Acting`) VALUES ('1', '1', '1', 'Vetri');
INSERT INTO `multi-role_table` (`Id`, `Artist_Id`, `MOVIEID`, `Roles_Acting`) VALUES ('2', '1', '1', 'Maran');
INSERT INTO `multi-role_table` (`Id`, `Artist_Id`, `MOVIEID`, `Roles_Acting`) VALUES ('3', '6', '2', 'Shiva');
INSERT INTO `multi-role_table` (`Id`, `Artist_Id`, `MOVIEID`, `Roles_Acting`) VALUES ('4', '6', '2', 'Deva');
INSERT INTO `multi-role_table` (`Id`, `Artist_Id`, `MOVIEID`, `Roles_Acting`) VALUES ('5', '4', '5', 'Akilan');
INSERT INTO `multi-role_table` (`Id`, `Artist_Id`, `MOVIEID`, `Roles_Acting`) VALUES ('6', '4', '5', 'Love');
