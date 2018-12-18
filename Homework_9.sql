use sakila;


#Display the first and last names of all actors from the table actor.
SELECT first_name as fn, last_name as ln FROM actor;

#1b. Display the first and last name of each actor in a single column in upper case letters. Name the column Actor Name.
SELECT Concat(first_name , " ", last_name) AS "Actor Name"
FROM actor;

#2a. You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, "Joe." What is one query would you use to obtain this information?
select * from actor 
where first_name = "JOE";

#2b. Find all actors whose last name contain the letters GEN:
select * from actor 
where last_name like "%GEN%";

#2c. Find all actors whose last names contain the letters LI. This time, order the rows by last name and first name, in that order:
select * from actor 
where last_name like "%LI%";


#3a. You want to keep a description of each actor. You don't think you will be performing queries on a description, so create a column in the table actor named description and use the data type BLOB (Make sure to research the type BLOB, as the difference between it and VARCHAR are significant).
alter table actor add( Description blob default String() );

#4a. List the last names of actors, as well as how many actors have that last name.
SELECT last_name from actor;
SELECT COUNT(last_name) as c FROM actor
WHERE c >= 2;

#4b. List last names of actors and the number of actors who have that last name, but only for names that are shared by at least two actors
#4c. The actor HARPO WILLIAMS was accidentally entered in the actor table as GROUCHO WILLIAMS. Write a query to fix the record.
#4d. Perhaps we were too hasty in changing GROUCHO to HARPO. It turns out that GROUCHO was the correct name after all! In a single query, if the first name of the actor is currently HARPO, change it to GROUCHO.

#5a. You cannot locate the schema of the address table. Which query would you use to re-create it?
#Hint: https://dev.mysql.com/doc/refman/5.7/en/show-create-table.html



#6a. Use JOIN to display the first and last names, as well as the address, of each staff member. Use the tables staff and address:
#6b. Use JOIN to display the total amount rung up by each staff member in August of 2005. Use tables staff and payment.
#6c. List each film and the number of actors who are listed for that film. Use tables film_actor and film. Use inner join.
#6d. How many copies of the film Hunchback Impossible exist in the inventory system?
#6e. Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name:

