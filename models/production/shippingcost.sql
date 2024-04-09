SELECT
    s."companyName" AS shipper_name,
    SUM(o."freight") AS total_shipping_cost
FROM
    {{ref('stgOrders')}} o
JOIN
    {{ref ('stgShippers')}} s ON o."shipVia" = s."shipperId"
GROUP BY
    s."companyName"