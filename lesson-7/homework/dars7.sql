create database Lesson_l
go 
use lesson_l

select *  Min (Price) as MinPrice
from Price;

-- Qaysi mahsulot eng arzon ekanini bilish. Narx siyosatini tahlil qilish uchun foydali.



select * Max (Salary) as MaxSalary
from Employees;

-- Ishlatilishi: Kompaniyadagi eng katta maoshni aniqlash. Xodimlar maoshidagi tafovutni baholash mumkin.


select * count (*) as TotalCustomers  
from Customers;


--Ishlatilishi: Nechta mijoz borligini aniqlash. Foydalanuvchilar bazasining hajmini tahlil qilish uchun.


select count (DISTINCT Category) as UniqueCategories  from Products;
---4  Ishlatilishi: Qancha turdagi mahsulot borligini bilish. Mahsulot turlarini boshqarishda yordam beradi.


select sum (Amount) as
TotalSales  from 
Sales  where ProductID =7;
-- Ishlatilishi: Muayyan mahsulot bo‘yicha savdoni kuzatish. Sotuv samaradorligini tahlil qilish uchun ishlatiladi.

select avg(Age) AverageAge  from Employees;


select DepartmentName, count (*)EmployeeCount
FROM Employees
GROUP BY DepartmentName;

--- Ishlatilishi: Ishchilar tarkibining yosh ko‘rsatkichini baholash. Kadrlar siyosatini belgilashda ishlatiladi.



SELECT Category, MIN(Price) AS MinPrice, MAX(Price) AS MaxPrice
FROM Products
GROUP BY Category;

-- Ishlatilishi: Qaysi bo‘limda nechta xodim borligini bilish. Kadrlar taqsimotini boshqarish uchun.


SELECT CustomerID, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY CustomerID;


--Ishlatilishi: Har bir kategoriya ichida narxlar diapazonini tahlil qilish. Kategoriyalar ichidagi mahsulotlar xilma-xilligini baholash uchun.




SELECT DepartmentName, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentName
HAVING COUNT(*) > 5;
--Ishlatilishi: Har bir mijoz qancha xarid qilganini aniqlash. Sodiq mijozlarni aniqlash uchun ishlatiladi.

--Ishlatilishi: Yirik bo‘limlarni aniqlash. Resurslar va byudjetni to‘g‘ri taqsimlashda yordam beradi.



--11 

select Category,sum(Amount) as (TotalSales) , avg (Amount) as AvgSales
from Sales
group by Category;

--Foydalanish maqsadi: Har bir mahsulot kategoriyasi bo‘yicha qancha savdo bo‘lganini va o‘rtacha savdo summasini aniqlash.
--Bu tahlil marketing va sotuvlar samaradorligini o‘lchashda foydali.



select p.Category sum(s.Amount) as   TotalSales, AVG(s.Amount) AS AverageSales
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.Category;

--Foydalanish maqsadi: Kadrlar bo‘limida nechta xodim borligini aniqlash. Bu kadrlar boshqaruvi uchun kerak.

select count(*) as HREmployees
from Employees
where DepartmentName ='HR';

-- 13 Foydalanish maqsadi: Bo‘limlar bo‘yicha maoshlar diapazonini tahlil qilish. 
---Notekislik yoki adolatsizlik bo‘yicha tahlil qilish uchun ishlatiladi.

select p.Category, max (Salary) as MaxSalary ,min (Salary) as MinSalary
from Employees
group  by Employees;

---Foydalanish maqsadi: Bo‘limlar o‘rtasida maoshlar taqsimotini tahlil qilish. 
--Budjet rejalashtirishda yordam beradi.

SELECT DeptID, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DeptID;

--Foydalanish maqsadi: Har bir bo‘limdagi o‘rtacha maosh bilan xodimlar sonini birgalikda ko‘rish.
--Xodimlar soni va xarajatlar o‘rtasidagi bog‘liqlikni aniqlash mumkin.

SELECT DepartmentName, AVG(Salary) AS AvgSalary, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentName;
--Foydalanish maqsadi: Qimmat mahsulotlar kategoriyalarini aniqlash. 
--Mahsulotlar joylashtirilishi (pricing strategy) uchun ishlatiladi.

SELECT Category, AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category
HAVING AVG(Price) > 400;
--Foydalanish maqsadi: Har yili qancha savdo bo‘lganini bilish.
--Vaqt o‘tgan sayin savdo o‘sishini yoki pasayishini kuzatish mumkin.


SELECT YEAR(SaleDate) AS SaleYear, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY YEAR(SaleDate);
---Foydalanish maqsadi: Faol mijozlarni aniqlash. 
--Bu orqali sodiq mijozlar bazasini yaratish yoki mukofotlash strategiyasini tuzish mumkin.

SELECT CustomerID, COUNT(*) AS OrderCount
FROM Sales
GROUP BY CustomerID
HAVING COUNT(*) >= 3;
