-- INSURANCE BRANCH PERFORMANCE QUERIES
-- -------------------------------------------------

-- 1-No of Invoice by Account Executive
SELECT 
	`Account Executive`,
    count(*) AS No_Of_Invoices
FROM 
	invoice
GROUP BY 
	`Account Executive`
ORDER BY 
	No_Of_Invoices DESC;

-- 2-Yearly Meeting Count
SELECT
	Year(str_to_date(meeting_date,'%d-%m-%Y')) AS Year,
    count(*) AS Meetings
FROM
	meeting
GROUP BY Year
ORDER BY Year Desc;

-- 3.1 Cross Sell--Target, Achieve, new
SELECT
	(SELECT concat(round(sum(`Cross sell bugdet`)/1000000,2),' M') 
	FROM ind_bud) as Target,
    
	(SELECT concat(round(sum(Amount)/1000000,2),' M') 
	FROM brok_fee
	WHERE income_class='Cross Sell') as Placed_Achievement,
    
	(SELECT
    concat(round(sum(Amount)/1000000,2),' M') 
	FROM invoice
	WHERE income_class='Cross Sell') as Invoice;
	
-- 3.2 New--Target,Achive,new
SELECT
	(SELECT concat(round(sum(`New Budget`)/1000000,2),' M') 
	FROM ind_bud) as Target,
    
	(SELECT concat(round(sum(Amount)/1000000,2),' M') 
	FROM brok_fee
	WHERE income_class='New') as Placed_Achievement,
    
	(SELECT
    concat(round(sum(Amount)/1000000,2),' M') 
	FROM invoice
	WHERE income_class='New') as Invoice;

-- 3.3Renewal-Target, Achieve , new
SELECT
	(SELECT concat(round(sum(`Renewal budget`)/1000000,2),' M') 
	FROM ind_bud) as Target,
    
	(SELECT concat(round(sum(Amount)/1000000,2),' M') 
	FROM brok_fee
	WHERE income_class='Renewal') as Placed_Achievement,
    
	(SELECT
    concat(round(sum(Amount)/1000000,2),' M') 
	FROM invoice
	WHERE income_class='Renewal') as Invoice;
    
-- 4. Stage by Revenue
SELECT 
	Stage,
    concat(round(sum(revenue_amount)/1000000,2),' M') as Revenue
FROM 
	opp
GROUP BY 
	Stage
ORDER BY Revenue Desc;


-- 5. No of meeting By Account Exe
SELECT 
	`Account Executive`,
    count(*) AS No_Of_Meetings
FROM 
	meeting
GROUP BY 
	`Account Executive`
ORDER BY 
	No_Of_Meetings DESC;

-- 6- Top-10 Opportunity
SELECT
	Opportunity_name,round(sum(revenue_amount),2) AS Revenue
FROM
	opp
GROUP BY
	opportunity_name
ORDER BY Revenue Desc 
LIMIT 10;

-- 7. Cross Sell Placed Achievement%
SELECT
	concat(round((SELECT sum(Amount)
	FROM brok_fee
	WHERE income_class='Cross Sell')/
    (SELECT sum(`Cross sell bugdet`) 
	FROM ind_bud)*100,2),'%') as 'CS_Plcd_Achmt%';
    
-- 8. Cross Sell Invoice Achievement%	 
SELECT
	Concat(Round((SELECT sum(Amount)
	FROM invoice
	WHERE income_class='Cross Sell')/
	(SELECT sum(`Cross sell bugdet`)
    FROM ind_bud)*100,2),'%') AS 'CS_Invc_Achmt%';
    
-- 9. New Placed Achievement%
SELECT
	Concat(Round((SELECT sum(Amount)
	FROM brok_fee
	WHERE income_class='New')/
    (SELECT sum(`New Budget`) 
	FROM ind_bud)*100,2),'%') AS 'New_Plcd_Achmt%';
    
-- 10. New Invoice Achievement%	
SELECT
	Concat(Round((SELECT sum(Amount)
	FROM invoice
	WHERE income_class='New')/
    (SELECT sum(`New Budget`) 
	FROM ind_bud)*100,2),'%') AS 'New_Invc_Achmt%';

-- 11. Renewal Placed Achievement%
SELECT
	Concat(Round((SELECT sum(Amount)
	FROM brok_fee
	WHERE income_class='Renewal')/
	(SELECT sum(`Renewal budget`) 
	FROM ind_bud)*100,2),'%') AS 'Ren_Plcd_Achmt%'; 
    
-- 12. New Invoice Achievement%	
SELECT
	Concat(Round((SELECT sum(Amount)
	FROM invoice
	WHERE income_class='Renewal')/
	(SELECT sum(`Renewal budget`) 
	FROM ind_bud)*100,2),'%') AS 'Ren_invc_Achmt%'; 	

-- 13. Opportunity-Product Distribution
SELECT 
	Product_Group,
    Count(*) AS Opportunities
FROM 
	opp
GROUP BY 
	Product_Group
ORDER BY 
	Opportunities Desc;

-- 14. Top-4 Open Opportunity by Revenue
SELECT
	Opportunity_name,round(sum(revenue_amount),2) AS Revenue
FROM
	opp
WHERE stage IN ("Qualify Opportunity","Propose Solution")
GROUP BY
	opportunity_name
ORDER BY Revenue Desc 
LIMIT 4;

-- 15. Top-4 Closed Opportunity by Revenue
SELECT
	Opportunity_name,round(sum(revenue_amount),2) AS Revenue
FROM
	opp
WHERE stage IN ("Negotiate")
GROUP BY
	opportunity_name
ORDER BY Revenue Desc 
LIMIT 4;

-- 16. Total Opportunities
SELECT 
	count(opportunity_id) as Total_Opportunities
FROM 
	opp;

-- 17. Total Open Opportunities
SELECT 
	count(opportunity_id) as Total_Open_Opp
FROM 
	opp
WHERE stage IN ("Qualify Opportunity","Propose Solution");

-- 18. Total Closed Opportunities
SELECT 
	count(opportunity_id) as Total_Closed_Opp
FROM 
	opp
WHERE stage IN ("Negotiate");

-- 19. Open Conversion Ratio
SELECT
	Concat(Round((SELECT count(opportunity_id) 
    FROM opp
	WHERE stage IN ("Qualify Opportunity","Propose Solution"))/
    (SELECT count(opportunity_id) as Total_Opportunities
    FROM opp)*100,2),'%') AS Open_Conv_Ratio;
    
-- 20. Closed Conversion Ratio
SELECT
	Concat(Round((SELECT count(opportunity_id) 
    FROM opp
	WHERE stage IN ("Negotiate"))/
    (SELECT count(opportunity_id) as Total_Opportunities
    FROM opp)*100,2),'%') AS Closed_Conv_Ratio;

-- STORED PROCEDURES  
-- ---------------------------------------------------  
-- Stored Procedure of No of Invoice by Account Exec
DELIMITER //
CREATE PROCEDURE Invoices (IN INPUT_Acc_Exe_Id INT)
BEGIN
SELECT 
	`Account Exe ID`,
	`Account Executive`,
    count(*) AS No_Of_Invoices
FROM 
	invoice
WHERE 
	`Account Exe ID`= INPUT_Acc_Exe_Id
GROUP BY 
	`Account Exe ID`,
	`Account Executive`;
END //
DELIMITER ;

CALL Invoices(4);

-- Stored of No of meeting By Account Exe
DELIMITER //
CREATE PROCEDURE Meetings(IN Input_Acc_Exe_Id INT)
BEGIN
SELECT 
	`Account Exe ID`,
	`Account Executive`,
    count(*) AS No_Of_Meetings
FROM 
	meeting
WHERE `Account Exe ID`= Input_Acc_Exe_Id
GROUP BY 
	`Account Exe ID`,
	`Account Executive`;
END //
DELIMITER ;

CALL Meetings(2);