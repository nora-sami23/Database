Select sum [totalamount] from [order] where year (orderdate) = 2019
Select avg [totalamount] from[order]
Select sectionname from order where exists (select ProductName fromProduct where orderid = order.id and productsalary > 200)
Select Min [productsalary] from product
Select productid, productname, productsalary, IsDiscontinued, sectionid from product where productsalary Not IN (5,7,15,20,40)
Select sectionname, sectionid from product where productid is Null
Select productid, productname, productsalary, sectionid, Is discontinued from product where productsalary Between 40 and 50 order by productsalary
Select Productname from Product where productid= any (select Productid from Order where Quantity = 2)
Select Max [totalamount] from [order] where year (orderdate) = 2017
Select productid, productname, productsalary, sectionid, is discontinued from product where productname Like 'ma%'
Select productname from product where productid in(select productid fromorder where quantity >50)
Select ordered, orderdate, productid, productsalary, totalamount from order 0 Right Join product P on 0 productid= P productid where totalamount is null
Select productname, productsalary, productid, sectionid, is discontinued from product where id is Not Null
Select productid, productname, productsalary, sectionid, is discontinued from product where productname Like 'Cha%'or productname Like 'Chan%'
Select productid, productname, productsalary, sectionid, is discontinued from product where productsalary NOT Between 15 and 25 order by productsalary
Select productid, productname, productsalary sectionid, is discontinued from product where productsalary IN (15,25,35,45,55)
Select count [productid], sectionid from product group by section Having count (productid) >8
Select orderid, orderdate, productid, productsalary, totalamount from [order] where Not (totalamount >= 100 And totalamount <=1200) order by totalamount Desc
Select productid, productname, productsalary, sectionid, Is discontinued from Product where productname = 'Mac' And productid = '4'
Select Max [orderdate] from [order] where year (orderdate) = 2016

Select productname from product where productid in (select productid from order where quantity>200)
Select productname ordercount = (select count[0.orderid] from [order] o. where o.productid = productid) from product.p
Select productname ordercount = (select count[0.sectionid] from [section] o. where o.productid = productid) from product.p

Select count [productid] from product
select sum [0.totalprice], productname from [order] 0.join product.p on o.productid = productid Group By productname order by sum  [0.totalamount] DESC

Select O productname, O country as order productsalay, P productsalary as Product productsalay from order O Full Join product P on O productsalay = P productsalay order by O productsalay, P productsalay
Select orderid, totalamount, productid, productsalary, orderdate from [order] Join product on [order] productid = productid
Select orderid, totalamount, productid, productsalary, orderdate from [order] Inner Join product on (order) productid = productid
Select A.productname as productname1, A. productname as productname1, B. productname as productname2, B. productname as productname2, from product A, product B where A id < > B id and A product salary = B product salary ordered by A product salary 
Select O product name, O country as order productsalay, P productsalary as Product productsalay from order O Right Join product P on O productsalay =P productsalay ordered by O productsalay, P productsalay

Insert into product [productid, productname, productsalary, sectionid] values ('3', 'Mac', '30$', '5')
Insert into section [sectionid, sectionname] values ('clothes', '7')
Insert into order [orderid] value ['15']
Insert into product [productid, productname, sectionid, productsalary] select leet [sectionname, sectionid(' 'sectionname) - 1], substring[sectionname,  sectionid (' 'sectionname) +1, 100], from section where sectionname = 'Mac'
Insert into payment [paymentid] value ['8']

Update product set isdiscontinued = 2
Update product set isdiscontinued = 1 where productsalary > 40
Update product set isdiscontinued = 2 where id = 22
Update product set productsalary = '$850'where id = 12
Update section set sectionname = clothes where sectionid = 6

Delete product
Delete product where prodactsalary >100
Delete product where id = 11
Delete section where id = 3
Delete product where prodactsalary <200
