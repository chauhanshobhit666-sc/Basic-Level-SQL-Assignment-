#Assignment 1

Select * From ele_store1;

#Question 1 - What is total number of orders placed?
Select count(distinct (OrderID)) from ele_store1;

#Question 2 - What are the unique channels present and how many are there?
Select count(distinct(Channel)) from ele_store1;                             #For the number of Channels.
Select distinct(Channel) from ele_store1;                                    #For all the unique channels. 

#Question 3 - How many cities are there?
Select count(distinct(City)) from ele_store1;

#Question 4 - Query the total cities count by Country.
Select country, count(distinct (City)) from ele_store1
Group by country; 


#Question 5 - How many products are there?
Select count(distinct(ProductName)) from ele_store1;

#Question 6 - Query the total sales and total profit?
Select sum(Sales), sum(Profit) from ele_store1;

#Question 7 - Query the total sales by region and country?
Select Region, Country, sum(Sales) from ele_store1                               #I dit both the columns/conditions together in this one to show that it is possible to do it. 
Group by Region, Country;

#Question 8 - Query the total order qty by promotion name?
Select PromotionName, sum(OrderQty) from ele_store1
Group by PromotionName;

#Question 9 - How much the total sales happened in Asia region?
Select sum(Sales) from ele_store1
Where Region = 'Asia';

#Question 10 - How much profit got in Asia region and India?
Select sum(Profit) from ele_store1
Where Region = 'Asia';

Select sum(Profit) from ele_store1
Where Country = 'India';

#Question 11 - Query the total order qty by Manufacturer and Product Name?
Select Manufacturer, sum(OrderQty) as 'OrderQty' from ele_store1                      #I did not put both the columns (Manufacturer and ProductName) in one query because that would also display duplicates in one of the column. We can also put all of them in one query as that is correct as well. 
Group By Manufacturer;

Select ProductName, sum(OrderQty) as 'OrderQty' from ele_store1	      
Group By ProductName;

#Question 12 - Query the total order quantity greater than 27 by city?
Select City, sum(OrderQty) from ele_store1
Group By City
Having sum(OrderQty) > 27;

#Question 13 - How much total sales happened in China and Beijing?
Select sum(Sales) from ele_store1
Where Country = 'China';

Select sum(Sales) from ele_store1
Where City  = 'Beijing';

#Question 14 -  How much total sales happened in Asian Holiday Promotion?
Select sum(Sales) from ele_store1
Where PromotionName = 'Asian Holiday Promotion';

#Question 15 - How much total profit value by Contoso, Ltd Manufacturer?
Select sum(Profit) from ele_store1
Where Manufacturer = 'Contoso, Ltd';

#Question 16 - Query the total sales and total order qty by productcategory?
Select ProductCategory, sum(Sales), sum(OrderQty) from ele_store1
Group By ProductCategory;

#Question 17 - Query the total sales value in between 1057 and 26700 by Region?
Select Region, sum(Sales) from ele_store1
Group By Region
Having sum(Sales) between 1057 and 26700;

#Question 18 - How many orders placed in Pittsfield city?
Select count(OrderID) from ele_store1
Where City = 'Pittsfield';

#Question 19 - Query the total sales and total profit by region, country and city?
Select Region, sum(Sales), sum(Profit) from ele_store1
Group By Region;

Select Country, sum(Sales), sum(Profit) from ele_store1
Group By Country;

Select City, sum(Sales), sum(Profit) from ele_store1
Group By City;

#Question 20 - Query the total unit cost and total price by productcategory, productsubcategory and Manufacturer?
Select ProductCategory, sum(UnitCost), sum(Price) from ele_store1                                    #I did not put all the columns in one query because that would also display duplicates in two of the columns. We can also put all of them in one query as that is correct as well.
Group By ProductCategory;

Select ProductSubCategory, sum(UnitCost), sum(Price) from ele_store1
Group By ProductSubCategory;

Select Manufacturer, sum(UnitCost), sum(Price) from ele_store1
Group By Manufacturer;

