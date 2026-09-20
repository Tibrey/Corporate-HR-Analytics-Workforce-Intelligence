-- Q1. List the 10 most recently defined departments by department_id.
	SELECT * FROM departments_stage
	ORDER BY dept_no;
		
-- Q2. Return the DISTINCT list of all department names.
	SELECT 
		DISTINCT(dept_name) AS dept_name
	FROM departments_stage;
	
Q3. Find all products whose product_name contains the word 'Organic' (use ILIKE).
Q4. List the 5 products with the shortest product_name using LENGTH() and ORDER BY.
Q5. Use a CASE statement to bucket order_hour_of_day into 'morning', 'afternoon', 'evening', 'night'.
Q6. Find all orders where days_since_prior_order IS NULL.
Q7. Return DISTINCT order_dow values, aliased as day_of_week.
Q8. List the first 10 rows of order_products_prior where reordered = 1.
