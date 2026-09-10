select
    ID as payment_id,
    ORDERID as order_id,
    PAYMENTMETHOD as payment_method,
    STATUS as payment_status,

    -- amount is stored in cents. convert to dollars
    AMOUNT / 100 as amount,
    CREATED as created_date

from {{ source('raw', 'stripe_payments')}}