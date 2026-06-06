USE digital_payments;

SELECT *
FROM digital_payments_data
LIMIT 10;

SELECT COUNT(*) AS total_transactions
FROM digital_payments_data;



SELECT 
    COUNT(*) AS total_transactions,
    SUM(fraud_flag) AS fraud_transactions,
    ROUND((SUM(fraud_flag) * 100.0 / COUNT(*)), 2) AS fraud_rate_percent
FROM digital_payments_data;


SELECT
    merchant_category,
    COUNT(*) AS transaction_count
FROM digital_payments_data
GROUP BY merchant_category
ORDER BY transaction_count DESC;

SELECT
    hour_of_day,
    COUNT(*) AS transaction_count
FROM digital_payments_data
GROUP BY hour_of_day
ORDER BY transaction_count DESC;

SELECT
    transaction_type,
    COUNT(*) AS transaction_count
FROM digital_payments_data
GROUP BY transaction_type
ORDER BY transaction_count DESC;

SELECT
    `transaction type`,
    COUNT(*) AS transaction_count
FROM digital_payments_data
GROUP BY `transaction type`
ORDER BY transaction_count DESC;

SELECT
    `transaction type`,
    COUNT(*) AS total_transactions,
    SUM(fraud_flag) AS fraud_transactions,
    ROUND(
        SUM(fraud_flag) * 100.0 / COUNT(*),
        2
    ) AS fraud_rate_percent
FROM digital_payments_data
GROUP BY `transaction type`
ORDER BY fraud_rate_percent DESC;

SELECT
    device_type,
    COUNT(*) AS total_transactions,
    SUM(fraud_flag) AS fraud_transactions,
    ROUND(
        SUM(fraud_flag) * 100.0 / COUNT(*),
        2
    ) AS fraud_rate_percent
FROM digital_payments_data
GROUP BY device_type
ORDER BY fraud_rate_percent DESC;

SELECT
    sender_age_group,
    COUNT(*) AS transaction_count
FROM digital_payments_data
GROUP BY sender_age_group
ORDER BY transaction_count DESC;

SELECT
    sender_state,
    COUNT(*) AS transaction_count
FROM digital_payments_data
GROUP BY sender_state
ORDER BY transaction_count DESC;

SELECT
    is_weekend,
    COUNT(*) AS transaction_count
FROM digital_payments_data
GROUP BY is_weekend;