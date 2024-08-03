select * from sales

select * from product

select * from customer

--inner join

select s.order_id,s.ship_mode,s.customer_id as sales_customer_id,
	c.customer_name,c.customer_id,c.age from sales as s
inner join customer as c
on s.customer_id=c.customer_id

select s.product_id as sales_product_id,s.order_date,s.ship_mode,
	  p.product_id,p.category,product_name from sales as s  
inner join product as p
on s.product_id=p.product_id

--left join

select s.order_id,s.ship_mode,s.customer_id as sales_customer_id,
	c.customer_name,c.customer_id,c.age from sales as s
left join customer as c
on s.customer_id=c.customer_id

--right join

select s.product_id as sales_product_id,s.order_date,s.ship_mode,
	  p.product_id,p.category,product_name from sales as s  
right join product as p
on s.product_id=p.product_id

--full join

select * from sales as s
full join customer as c
on s.customer_id=c.customer_id

select s.product_id as sales_product_id,s.order_date,s.ship_mode,
	  p.product_id,p.category,product_name from sales as s  
full join product as p
on s.product_id=p.product_id


--join 3 tables at a time

select s.order_id,s.ship_mode,s.customer_id as sales_customer_id,s.product_id as sales_product_id,
       customer_name,c.age,c.city,
       product_name,p.category from sales as s
inner join customer as c
on s.customer_id=c.customer_id
inner join product as p
on s.product_id=p.product_id

