-- 코드를 입력하세요
#GROUP BY 년,월
SELECT YEAR(SALES_DATE) AS YEAR,MONTH(SALES_DATE) AS MONTH, COUNT(DISTINCT a.USER_ID) AS PUCHASED_USERS, ROUND(COUNT(DISTINCT a.USER_ID)/ (SELECT COUNT(*) FROM USER_INFO WHERE DATE_FORMAT(JOINED,'%Y') = '2021'),1) AS PUCHASED_RATIO                           
FROM USER_INFO AS a
JOIN ONLINE_SALE AS b
ON a.USER_ID = b.USER_ID
WHERE DATE_FORMAT(JOINED,'%Y') = '2021'
GROUP BY YEAR,MONTH
ORDER BY YEAR,MONTH


                                                                                
                                                                                
