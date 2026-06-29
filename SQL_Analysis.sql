create database credit_card_churn;

use credit_card_churn;

CREATE TABLE bank_churn (
    CLIENTNUM BIGINT,
    Attrition_Flag VARCHAR(30),
    Customer_Age INT,
    Gender VARCHAR(10),
    Dependent_count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(30),
    Income_Category VARCHAR(30),
    Card_Category VARCHAR(30),
    Months_on_book INT,
    Total_Relationship_Count INT,
    Months_Inactive_12_mon INT,
    Contacts_Count_12_mon INT,

    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal DECIMAL(10,2),
    Avg_Open_To_Buy DECIMAL(10,2),

    Total_Amt_Chng_Q4_Q1 DECIMAL(8,3),

    Total_Trans_Amt DECIMAL(10,2),

    Total_Trans_Ct INT,

    Total_Ct_Chng_Q4_Q1 DECIMAL(8,3),

    Avg_Utilization_Ratio DECIMAL(5,3),

    Churn INT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/BankChurners_Clean.csv'
INTO TABLE bank_churn
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

RENAME TABLE bank_churn TO bankchurn;

show tables;

-- total customers
select count(*) as total_customers from bankchurn;

-- Active vs Churned customers analysis 
select Attrition_Flag,Count(*) as Customers from bankchurn
group by Attrition_Flag;

-- overall Churn rate analysis
select round(sum(churn)/count(*)*100,2) as churn_rate from bankchurn;

-- churn by gender

-- churn rate by gender analysis
SELECT Gender,ROUND(AVG(Churn)*100,2) AS Churn_Rate FROM bankchurn
GROUP BY Gender;
 
-- churn by age group analysis
select 
case 
when customer_age between 20 and 30  then '21-30'
when customer_age between 31 and 40  then '31-40'
when customer_age between 41 and 50  then '41-50'
when customer_age between 51 and 60  then '51-60'
else '61+'
end as age_group,
count(*) as customers,round(avg(churn)*100,2) as churn_rate from bankchurn

group by age_group
order by age_group;

-- churn by income category analysis
select income_category,count(*) as customers,round(avg(churn)*100,2) as churn_rate from bankchurn
group by income_category
order by churn_rate desc;

-- churn by marital status analysis
select marital_status,count(*) as customers,round(avg(churn)*100,2) as churn_rate from bankchurn
group by marital_status
order by marital_status desc;
 
-- churn by card category analysis
select card_category,count(*) as customers,round(avg(churn)*100,2) as churn_rate from bankchurn
group by card_category
order by card_category;

-- churn by inactive months analysis
select months_inactive_12_mon,count(*) as customers,round(avg(churn)*100,2) as churn_rate from bankchurn
group by 1
order by 1 desc;

-- customer contact analysis
select contacts_count_12_mon,count(*) as customers,round(avg(churn)*100,2) as churn_rate from bankchurn
group by 1
order by 1 desc;

-- product relationship analysis 
select total_relationship_count,count(*) as customers,round(avg(churn)*100,2) as churn_rate from bankchurn
group by 1
order by 1 desc;

-- average transaction amount(active vs churned) analysis 
select attrition_flag,round(avg(total_trans_amt),2) as avg_transaction_amt from bankchurn
group by 1;

-- average transaction count(active vs churned) analysis
select attrition_flag,round(avg(total_trans_ct),0) as avg_transaction_ct from bankchurn
group by 1;

-- avearge credit limit(active vs churned) analysis 
select attrition_flag,round(avg(credit_limit),0) as avg_credit_limit from bankchurn
group by 1;

-- top high risk customers
select * from bankchurn
where months_inactive_12_mon <= 3
and total_trans_ct < 45
and total_relationship_count <=3;

-- high risk customer count
select count(*) from bankchurn
where months_inactive_12_mon <= 3
and total_trans_ct < 45
and total_relationship_count <=3;

-- top 10 customer by transaction amount
select customer_age,gender,income_category,total_trans_amt from bankchurn
order by total_trans_amt desc
limit 10;

-- average credit utilization
select attrition_flag,round(avg(avg_utilization_ratio),2) as avg_utilization from bankchurn
group by 1;

-- customers by marital status
select marital_status ,count(*) as customers from bankchurn
group by marital_status;

-- executive summary
SELECT COUNT(*) AS Total_Customers,
SUM(Churn) AS Churned_Customers,
COUNT(*)-SUM(Churn) AS Existing_Customers,
ROUND(AVG(Credit_Limit),2) AS Avg_Credit_Limit,
ROUND(AVG(Total_Trans_Amt),2) AS Avg_Transaction_Amount,
ROUND(AVG(Total_Trans_Ct),2) AS Avg_Transaction_Count,
ROUND(AVG(Churn)*100,2) AS Churn_Rate 
FROM bankchurn;



