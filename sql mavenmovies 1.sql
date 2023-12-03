-- Q1. Identify the primary keys and foreign keys in maven movies db. Discuss the differences 
/* primary key- it is column in a table that is unique and not null.alter
foreign key- a foreign key is a column in a table that refer to the primary key.It have duplicate and null value */
desc actor;
-- primary key= actor_id and foreign key= last_name
desc actor_award;
-- primary key= actor_award_id and foreign key= last_name
desc address;
-- primary key= address_id and foreign key= city_id
desc city;
-- primary key= city_id and foreign key= country_id
desc customer;
-- primary key= customer_id and foreign key= last_name, store_id, address_id
desc film;
-- primary key= film_id and foreign key= title, language_id, original_language_id
desc film_text;
-- primary key= film_id and foreign key= title
desc inventory;
-- primary key= inventory_id and foreign key= store_id, film_id
desc payment;
-- primary key= payment_id and foreign key= custoer_id, staff_id, rental_id
desc rental;
-- primary key= rental_id and foreign key= rental_date, invetory_id, customer_id, staff_id
desc staff;
-- primary key= staff_id and foreign key= address_id, store_id
desc store;
-- primary key= store_id and foreign key= address_id

-- Q2. List all details of actors 
select * from actor;
-- Q3. List all customer information from DB. 
select * from customer;
-- Q4. List different countries. 
select country from country;
-- Q5. Display all active customers. 
select first_name, last_name from customer where active=1;
-- Q6. list of all rental_ids for customer with id 1.
select rental_id, customer_id from rental where customer_id=1;
-- Q7. Display all the films whose rental duration is greater than 5 .
select title from film where rental_duration >5;
-- Q8. List the total number of films whose replacement cost is greater than $15 and less than $20.
select count(film_id) from film where replacement_cost between 15 and 20;
-- Q9. Find the number of films whose rental rate is less than $1.
select count(film_id) from film where rental_rate < 1;
-- Q10. Display the count of unique first names of actors. 
select count(distinct first_name) from actor ;
-- Q11. Display the first 10 records from the customer table 
select * from customer limit 10;
-- Q12. Display the first 3 records from the customer table whose first name starts with ‘b’.
select * from customer where first_name like 'b%' limit 3;
-- Q13. Display the names of the first 5 movies which are rated as ‘G’. 
select title, rating from film where rating= 'g' limit 5;
-- Q14. Find all customers whose first name starts with "a".  
select first_name, last_name from customer where first_name like "a%";
-- Q15 . Find all customers whose first name ends with "a". 
select first_name, last_name from customer where first_name like "%a";
-- Q16. Display the list of first 4 cities which start and end with ‘a’ . 
select city from city where city like "%a%" limit 4;
-- Q 17. Find all customers whose first name have "NI" in any position.
select first_name from customer where first_name like "%ni%";
-- Q18. Find all customers whose first_name have "r" in the secod position
select first_name from customer where first_name like "_r%";
-- Q19. Find all customers whose first name starts with "a" and are at least 5 characters in length. 
select first_name from customer where first_name like "a%" and length(first_name) >= 5;
-- Q20. Find all customers whose first name starts with "a" and ends with "o". 
select * from customer where first_name like "a%o";
-- Q21. Get the films with pg and pg-13 rating using IN operator.
select * from film where rating in( "pg", "pg-13");
-- Q22. Get the films with length between 50 to 100 using between operator. 
select * from film where length between 50 and 100 ;
-- Q23. Get the top 50 actors using limit operator. 
select * from actor limit 50;
-- Q24. Get the distinct film ids from inventory table. 
select distinct film_id from inventory;


