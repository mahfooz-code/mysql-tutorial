
#   Data Windows
    SELECT quarter(payment_date) quarter,
        monthname(payment_date) month_nm,
        sum(amount) monthly_sales
    FROM payment
    WHERE year(payment_date) = 2005
    GROUP BY quarter(payment_date), monthname(payment_date);


