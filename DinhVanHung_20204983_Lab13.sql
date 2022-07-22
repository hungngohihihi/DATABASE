set showplan_all on;

select * 
from dbo.customers
where customerid in (select customerid from dbo.cust_hist);


select * 
from dbo.products
where prod_id not in (select prod_id from dbo.cust_hist);

select customerid,sum(price) as total
from dbo.cust_hist,dbo.products
where dbo.cust_hist.prod_id=dbo.products.prod_id
group by customerid
order by customerid ASC;

set showplan_all off;