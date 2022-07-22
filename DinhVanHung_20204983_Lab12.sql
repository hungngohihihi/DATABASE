-- ALTER TABLE orderlines
-- ADD CONSTRAINT fk_prod FOREIGN KEY(prod_id)
-- REFERENCES products(prod_id)

-- ALTER TABLE products
-- ADD CONSTRAINT fk_category FOREIGN KEY(category)
-- REFERENCES categories(category)

-- ALTER TABLE reorder
-- ADD CONSTRAINT fk_reorder_prod FOREIGN KEY(prod_id)
-- REFERENCES products(prod_id)

-- ALTER TABLE inventory
-- ADD CONSTRAINT fk_inventory_prod FOREIGN KEY(prod_id)
-- REFERENCES products(prod_id)



--1
-- SELECT * FROM customers
-- WHERE country = 'US';
-- CREATE INDEX in_1 ON customers(country);
-- DROP INDEX customer.in_1;

--2
-- SELECT * FROM orders
-- WHERE totalamount > 10;
-- CREATE INDEX in_2 ON orders(totalamount);
-- DROP INDEX in_2 ON orders(totalamount);

--3
-- SELECT customers.customerid,firstname,lastname,address1
-- FROM customers
-- JOIN orders ON customers.customerid = orders.customerid
-- WHERE CUSTOMERS.customerid IN (
--     SELECT customerid FROM orders GROUP BY customerid HAVING SUM(totalamount) >1000
-- )
-- CREATE UNIQUE INDEX uidx_3 ON customers(customerid);
--4
-- with bangphu1 as
-- (
-- SELECT sum(quantity) AS sum_quantity from orderlines
-- group by orderlines.prod_id )
-- SELECT prod_id,title, bangphu1.sum_quantity from products,bangphu1
-- group by products.title,products.prod_id,bangphu1.sum_quantity;
-- CREATE INDEX prod_idx ON products(prod_id);
-- DROP INDEX prod_idx ON products;

--5
-- SELECT * from customers
-- where customers.customerid in (select customerid from orders);
-- CREATE INDEX customer_idx ON customers(customerid);
-- DROP INDEX customer_idx ON customers;

--6
-- SELECT * FROM products
-- SELECT * FROM orderlines

-- SELECT products.prod_id FROM products
-- EXCEPT
-- SELECT orderlines.prod_id FROM orderlines
-- CREATE UNIQUE INDEX uidx_6 ON products(prod_id);
-- CREATE UNIQUE INDEX uidx_6x ON orderlines(prod_id);


--7
-- SELECT customerid, SUM(totalamount) FROM orders 
-- GROUP BY customerid
-- CREATE INDEX total ON orders(totalamount);
-- DROP INDEX total ON orders(totalamount);
--8
-- SELECT prod_id, SUM(quantity) FROM orderlines
-- GROUP BY prod_id 
-- ORDER BY prod_id ;
-- CREATE INDEX soLuong ON orderlines(quantity);
-- DROP INDEX soLuong ON orderlines(quantity);